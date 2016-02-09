# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from unittest import TestCase

from textnorm.converter import dummy
from textnorm.processing import process_text
from .data import get_text1

class TestProcessing(TestCase):

    def test_process_text(self):
        self.assertEqual(process_text(get_text1(), dummy), get_text1())
