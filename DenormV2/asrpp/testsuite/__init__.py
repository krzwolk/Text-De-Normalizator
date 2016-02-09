# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from unittest import TestLoader
from .asrpp import TestAsrpp
from .asyncmap import TestAsyncMap

def tests():
    return [
        TestLoader().loadTestsFromTestCase(TestAsrpp),
        TestLoader().loadTestsFromTestCase(TestAsyncMap),
    ]
