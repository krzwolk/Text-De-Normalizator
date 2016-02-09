# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import os
import codecs
import nltk
from unittest import TestCase
from StringIO import StringIO
from asrpp.conf import Conf
from asrpp import load_conf, convert

def parse_test_data(f):
    data = []
    pair = []
    i = 0
    for line in f:
        line = line.strip()
        if not line or line[0] == '#' or i == 2:
            i = 0
            continue
        pair.append(line)
        if len(pair) == 2:
            data.append(pair)
            pair = []
        i += 1
    return data

def read_test_data():
    path = os.path.dirname(__file__)
    path = os.path.dirname(path)
    path = os.path.dirname(path)
    path = os.path.join(path, 'data', 'test_data.txt')

    with codecs.open(path, encoding='utf-8') as f:
        return parse_test_data(f)

def read_conf():
    path = os.path.dirname(__file__)
    path = os.path.dirname(path)
    path = os.path.dirname(path)
    return load_conf(path, ['asrpp.conf', 'asrpp_short.conf'])

class TestAsrpp(TestCase):

    maxDiff = 3000

    def test_test_data(self):
        conf = read_conf()
        conf.threads = 2
        for td in read_test_data():
            fin = StringIO(td[0])
            fout = StringIO()
            convert(fin, fout, conf)
            self.assertEqual(fout.getvalue().strip(), td[1])
            fin.close()
            fout.close()
