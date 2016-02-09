# -*- coding: utf-8 -*-
"""
Description: Functions for postprocessing text data
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import os
import logging
from yaml import safe_load
from .conf import Conf
from .dataloader import load_list, load_simple_list, load_map
from .asyncmap import AsyncMap
from .asrpp import converter_factory

log = logging.getLogger(__name__)

def load_conf(root, conf_files):
    """@todo: Docstring for load_conf.

    :root: @todo
    :conf_files: @todo
    :returns: @todo

    """
    def get_path(path):
        return os.path.join(root, path)

    log.info('Loading configuration')

    conf = Conf()
    for path in conf_files:
        conf.load_yaml(get_path(path))

    conf.surnames = load_list(get_path(conf.surnames_path))
    conf.surnames_near_name = load_list(get_path(conf.surnames_near_name_path))

    conf.names = load_list(get_path(conf.names_path))
    conf.names_near_surname = load_list(get_path(conf.names_near_surname_path))

    conf.salutations = load_list(get_path(conf.salutations_path))
    conf.abbreviations = load_map(get_path(conf.abbreviations_path), ';')
    conf.abbreviations_near_number = load_map(get_path(conf.abbreviations_near_number_path), ';')
    conf.symbols = load_map(get_path(conf.symbols_path), ';')
    conf.comma_phrases = load_list(get_path(conf.comma_phrases_path))
    conf.exclamations = load_list(get_path(conf.exclamations_path))
    conf.questions = load_list(get_path(conf.questions_path))
    conf.punctuation_marks = load_simple_list(get_path(conf.punctuation_marks_path))
    conf.months = load_map(get_path(conf.month_path), ';')
    # For month need to have mapping word -> word
    months = {}
    for m, v in conf.months.items():
        months[m[0]] = v[0]
    conf.months = months
    with open(get_path(conf.numbers_path)) as f:
        conf.numbers = safe_load(f)
    with open(get_path(conf.ord_numbers_path)) as f:
        conf.ord_numbers = safe_load(f)

    return conf


def log_iter(step, items):
    for i, item in enumerate(items):
        if i % step == 0:
            log.info('Processing line number {}'.format(i+1))
        yield item

def convert(fin, fout, conf):
    """@todo: Docstring for convert.

    :fin: @todo
    :fout: @todo
    :conf: @todo
    :returns: @todo

    """
    amap = AsyncMap(conf, workers_count=conf.threads)
    for sentences in amap.apply(log_iter(1, fin)):
        for sentence in sentences:
            fout.write(sentence + '\n')

