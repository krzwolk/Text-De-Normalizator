# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from unittest import TestLoader
from .converter import TestConverter
from .check import TestPositionCheck
from .processing import TestProcessing

def tests():
    return [
        TestLoader().loadTestsFromTestCase(TestConverter),
        TestLoader().loadTestsFromTestCase(TestPositionCheck),
        TestLoader().loadTestsFromTestCase(TestProcessing),
    ]
