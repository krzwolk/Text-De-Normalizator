# -*- coding: utf-8 -*-
"""
Description: Function for working with tokens
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

def join(puncts, tokens):
    """Function for joining tokens in one string

    :puncts: list of punctuatin marks
    :tokens: list of tokens
    :returns: @todo

    """
    text = ''
    next_no_space = False
    for i, token in enumerate(tokens):
        if next_no_space:
            text += token
            next_no_space = False
        elif token in {u'%', u'$', u'€'}:
            text += token
        elif token in puncts:
            text += token
        elif token == u'``':
            text += u' ' + '"'
            next_no_space = True
        elif token == u"''":
            text += '"'
        elif token.find('\'') == 0:
            text += token
        elif text:
            text += u' ' + token
        else:
            text = token
    return text

