# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from unittest import TestLoader
from .pl2num import TestPl2Num

def tests():
    return [
        TestLoader().loadTestsFromTestCase(TestPl2Num),
    ]
