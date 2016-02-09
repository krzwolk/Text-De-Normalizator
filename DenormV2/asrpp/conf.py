# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import yaml

class Conf(object):

    """Docstring for Conf. """

    def load_yaml(self, path):
        """@todo: Docstring for load_yaml.

        :path: @todo
        :returns: @todo

        """
        with open(path) as f:
            data = yaml.safe_load(f)
        self.load_data(data)

    def load_data(self, data):
        """@todo: Docstring for load_data.

        :data: @todo
        :returns: @todo

        """
        for name, value in data.items():
            setattr(self, name, value)
