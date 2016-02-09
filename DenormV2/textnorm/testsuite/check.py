# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from unittest import TestCase

from ..check import (is_number,
                     is_initials,
                     matches_single_phrase,
                     matches_word,
                     near_number,
                     near_phrase,
                     sent_equal,
                     sent_starts_with)
from .data import get_text1, get_text2

class TestPositionCheck(TestCase):

    def test_is_number(self):
        """@todo: Docstring for test_is_number.
        :returns: @todo

        """
        self.assertTrue(is_number('123.2'))
        self.assertFalse(is_number('12a.2'))

    def test_matches_single_phrase(self):
        """@todo: Docstring for test_matches_single_phrase.
        :returns: @todo

        """
        self.assertTrue(matches_single_phrase(get_text1(), [u'программист', u'семечкин'], 0))
        self.assertTrue(matches_single_phrase(get_text1(), [u'проверяет', u'программу'], 2))
        self.assertFalse(matches_single_phrase(get_text1(), [u'проверяет', u'программу'], 3))

    def test_matches_word(self):
        check = matches_word(['word'])
        self.assertTrue(check(['Word', 'sometext'], [''], 0))
        self.assertFalse(check(['word', 'sometext'], [''], 1))

    def test_near_prase(self):
        """@todo: Docstring for test_near_prase.
        :returns: @todo

        """
        check = near_phrase([[u'проверяет', u'программу']], 1)
        self.assertTrue(check(get_text1(), [u'программист', u'семечкин'], 0))
        self.assertFalse(check(get_text1(), [u'семечкин', u'проверяет'], 1))
        check = near_phrase([[u'проверяет']], -1)
        self.assertTrue(check(get_text1(), [u'программу'], 3))

    def test_near_number(self):
        """@todo: Docstring for test_near_number.
        :returns: @todo

        """
        check = near_number(-1)
        self.assertTrue(check(get_text2(), [u'в', u'офисе'], 4))
        self.assertFalse(check(get_text2(), [u'в', u'офисе'], 0))

    def test_is_initials(self):
        """@todo: Docstring for test_is_initials.
        :returns: @todo

        """
        self.assertTrue(is_initials([u'a.'], [u'a.'], 0))
        self.assertTrue(is_initials([u'a.b.'], [u'a.b.'], 0))
        self.assertTrue(is_initials([u'ś.'], [u'ś.'], 0))
        self.assertFalse(is_initials([u'a.1.'], [u'a.1.'], 0))

    def test_sent_equal(self):
        """@todo: Docstring for test_sent_equal.
        :returns: @todo

        """
        check = sent_equal([u'.'], [[u'go'], [u'ok']])
        self.assertTrue(check([u'go', u'.']))
        self.assertTrue(check([u'go']))
        self.assertFalse(check([u'om', u'.']))

    def test_sent_starts_with(self):
        """@todo: Docstring for test_sent_starts_with.
        :returns: @todo

        """
        check = sent_starts_with([[u'go'], [u'ok']])
        self.assertTrue(check([u'go', u'here']))
        self.assertFalse(check([u'me', u'here']))
