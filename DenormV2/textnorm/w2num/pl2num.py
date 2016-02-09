# -*- coding: utf-8 -*-
"""
Description: Converting polish numbers in words to number
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

def to_number(numbers, phrase):
    """Convert polish numbers in words to number

    :numbers: dictionary of number names and values
    :phrase: tokenized text
    :returns: number
    :rtype: int

    """
    result = 0
    prev = phrase[0]
    values = []
    for word in phrase:
        values.append(numbers[word])
    for value in values:
        if prev < value:
            result *= value
        else:
            result += value
        prev = value
    return result
