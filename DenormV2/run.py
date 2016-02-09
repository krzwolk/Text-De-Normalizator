# -*- coding: utf-8 -*-
"""
Description: ASR postprocessing tool
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import os
import argparse
import codecs
import logging
from multiprocessing import cpu_count
from asrpp import load_conf, convert

if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)
    log = logging.getLogger()

    parser = argparse.ArgumentParser(description='ASR postprocessing tool')
    parser.add_argument('-i', '--in', dest='input_file', required=True, help='Input file')
    parser.add_argument('-o', '--out', dest='output_file', required=True, help='Output file')
    parser.add_argument('-c', '--conf', default=None, help='Custom configuration file')
    parser.add_argument('--threads', default=0, type=int, help='Number of parallel threads for processing text')
    args = parser.parse_args()

    if args.threads == 0:
        args.threads = cpu_count()
    config_files = ['asrpp.conf']
    if args.conf:
        config_files.append(args.conf)

    conf = load_conf(os.path.dirname(__file__), config_files)
    conf.threads = args.threads

    log.info('Starting converter')
    with codecs.open(args.input_file, encoding='utf-8') as in_file,\
            codecs.open(args.output_file, 'w', encoding='utf-8') as out_file:
        convert(in_file, out_file, conf)
