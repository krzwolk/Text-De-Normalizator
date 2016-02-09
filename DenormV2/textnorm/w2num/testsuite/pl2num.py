# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from unittest import TestCase, TestSuite, TestLoader, TextTestRunner
from yaml import safe_load
from ..pl2num import to_number

class TestPl2Num(TestCase):

    pl_numbers_file = 'data/pl_numbers.yaml'

    @classmethod
    def setUpClass(cls):
        with open(cls.pl_numbers_file) as f:
            cls.pl_numbers = safe_load(f)

    def test_to_number(self):
        self.assertEqual(to_number(self.pl_numbers, [u'dziewięć']), 9)
        self.assertEqual(to_number(self.pl_numbers, [u'siedemdziesiąt', u'osiem']), 78)
        self.assertEqual(to_number(self.pl_numbers, [u'jeden', u'tysiąc', u'dwieście', u'trzy']), 1203)
        self.assertEqual(to_number(self.pl_numbers, [u'dwa', u'tysiące', u'sześćset', u'osiemdziesiąt', u'cztery']), 2684)

if __name__ == '__main__':
    suite = TestSuite((
        TestLoader().loadTestsFromTestCase(TestPl2Num),
    ))
    TextTestRunner(verbosity=1).run(suite)
