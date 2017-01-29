import os
import shutil

def before_all(context):
    if not os.path.exists('../test_data'):
        os.mkdir('../test_data')

def after_all(context):
    remove('../test_data')

def remove(path):
    if os.path.exists(path):
        shutil.rmtree(path)
    else:
        raise ValueError("{} is not a directory!".format(path))