# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from Queue import Empty
from threading import Thread
from multiprocessing import Process, Queue, Event
from .asrpp import converter_factory

def _worker(feed_q, done_q, done, conf):
    """@todo: Docstring for _worker.

    :feed_q: @todo
    :done_q: @todo
    :done: @todo
    :conf: @todo
    :returns: @todo

    """
    text_converter = converter_factory(conf)
    while True:
        try:
            result = feed_q.get(timeout=1)
        except Empty:
            if done.is_set():
                break
        else:
            if isinstance(result, int):
                done_q.put(result)
            else:
                num, item = result
                done_q.put((num, text_converter(item)))

def _feeder(feed_q, items):
    """@todo: Docstring for _feeder.

    :feed_q: @todo
    :items: @todo
    :returns: @todo

    """
    i = -1
    for i, item in enumerate(items):
        feed_q.put((i, item))
    feed_q.put(i+1)

def _run_thread(fun, args):
    """@todo: Docstring for _run.

    :fun: @todo
    :args: @todo
    :returns: @todo

    """
    thread = Thread(target=fun, args=args)
    thread.daemon = True
    thread.start()
    return thread

def _run_proc(fun, args):
    """@todo: Docstring for _run_proc.

    :fun: @todo
    :args: @todo
    :returns: @todo

    """
    proc = Process(target=fun, args=args)
    proc.daemon = True
    proc.start()
    return proc

class AsyncMap(object):

    """Docstring for AsyncMap. """

    def __init__(self, conf, workers_count=1, qsize=100):
        """@todo: to be defined1.

        :conf: @todo
        :workers_count: @todo
        :qsize: @todo

        """
        self.workers_count = workers_count
        self.qsize = qsize
        self.feed_q = Queue(qsize)
        self.done_q = Queue(qsize)
        self.done = Event()
        for _ in range(workers_count):
            _run_proc(_worker, (self.feed_q, self.done_q, self.done, conf))

    def apply(self, items):
        """@todo: Docstring for apply.

        :items: @todo
        :returns: @todo

        """
        current = 0
        last = -1
        data = {}
        _run_thread(_feeder, (self.feed_q, items))
        while last == -1 or current < last:
            try:
                result = self.done_q.get(timeout=1)
                if isinstance(result, int):
                    last = result
                else:
                    num, item = result
                    data[num] = item
            except Empty:
                pass
            try:
                yield data.pop(current)
            except KeyError:
                pass
            else:
                current += 1
        self.done.set()
