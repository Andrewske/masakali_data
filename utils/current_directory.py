import os
import sys


def current_directory(file=None):
    if file:
        return os.path.dirname(os.path.abspath(file))
    else:
        return os.getcwd()
