# -*- coding: utf-8 -*-
"""
Description: Functions for loading data used for processing texts
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import codecs
import nltk

def _all_to_lower(tokens):
    return tuple(map(lambda x: x.lower(), tokens))

def load_list(path):
    """@todo: Docstring for load_list.

    :path: @todo
    :returns: @todo

    """
    data = {}
    with codecs.open(path, encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            tokens = nltk.word_tokenize(line)
            k = _all_to_lower(tokens)
            v = tuple(tokens)
            if k and v:
                data[k] = v
    return data

def load_simple_list(path):
    """@todo: Docstring for load_simple_list.

    :path: @todo
    :returns: @todo

    """
    data = []
    with codecs.open(path, encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            data.append(line)
    return data

def load_map(path, delimiter):
    """@todo: Docstring for load_map.

    :path: @todo
    :delimiter: @todo
    :returns: @todo

    """
    data = {}
    with codecs.open(path, encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            try:
                k, v = line.split(delimiter)
            except ValueError:
                pass
            else:
                k = _all_to_lower(nltk.word_tokenize(k))
                v = tuple(nltk.word_tokenize(v))
                if k and v:
                    data[k] = v
    return data
