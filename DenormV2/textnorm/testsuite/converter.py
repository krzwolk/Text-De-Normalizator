# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from unittest import TestCase

from ..converter import (capitalize_sent,
                         change_end_punct,
                         make_junction,
                         convert_to_number)
from .data import get_text1

class TestConverter(TestCase):

    def test_capitalize_sent(self):
        self.assertEqual(capitalize_sent([u'data', u'text']), [u'Data', u'text'])

    def test_change_end_punct(self):
        conv = change_end_punct([u'.'], u'!', lambda x: True)
        self.assertEqual(conv([u'data', u'text', '.']), [u'data', u'text', '!'])

    def test_make_junction(self):
        self.assertEqual(make_junction(['aaa', 'bbb', '.'], ['.'], 1, 1, ['bbb', '.']),
                         (['bbb', '.'], 2))

    def test_convert_to_number(self):
        converter = convert_to_number(dict(one=1, ten=10, hundred=100))
        self.assertEqual(converter(['word', 'one', 'hundred', 'ten'], 1), (['110'], 3))
