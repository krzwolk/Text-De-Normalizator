# -*- coding: utf-8 -*-
"""
Description: Functions related to text processing - iteration, comparison
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

def process_text(text, conv):
    """@todo: Docstring for process_text.

    :text: tokenized text for processing
    :conv: converter, which accepts 2 arguments text and index, and return tuple
        of 2 values - tokens for this index and how many tokens its replaces or
        None if no modification was made
    :returns: converted list of tokens

    """
    converted_text = []
    i = 0
    while i < len(text):
        result = conv(text, i)
        if result is not None:
            tokens, n = result
            converted_text += tokens
            assert n > 0
            i += n
        else:
            converted_text.append(text[i])
            i += 1
    return converted_text
