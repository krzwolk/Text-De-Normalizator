# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import nltk

text1 = nltk.word_tokenize(u'программист семечкин проверяет программу')
text2 = nltk.word_tokenize(u'программист семечкин номер 10 в офисе')

def get_text1():
    """@todo: Docstring for get_text1.
    :returns: @todo

    """
    return list(text1)

def get_text2():
    """@todo: Docstring for get_text2.
    :returns: @todo

    """
    return list(text2)
