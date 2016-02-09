# -*- coding: utf-8 -*-
"""
Description: Run tests for 'textnorm' module
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import argparse
import unittest
import textnorm.testsuite as tnts
import textnorm.w2num.testsuite as w2numts
import asrpp.testsuite as asrppts

parser = argparse.ArgumentParser(description='Test running options')
parser.add_argument('-v', action='count', default=0, help='Verbosity level')
args = parser.parse_args()

suite = unittest.TestSuite(tnts.tests() + w2numts.tests() + asrppts.tests())
unittest.TextTestRunner(verbosity=args.v).run(suite)
