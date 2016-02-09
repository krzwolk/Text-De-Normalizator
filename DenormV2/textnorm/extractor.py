# -*- coding: utf-8 -*-
"""Functions for extracting various information from text
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

def get_longest_match(text, words, index):
    """Finds and returns longest sequence of words in text

    :text: tokenized text
    :words: list of words to find
    :index: start index to start from
    :returns: phrase with longest sequential match of words

    """
    phrase = []
    for i in range(index, len(text)):
        if text[i] in words:
            phrase.append(text[i])
        else:
            break
    return phrase
