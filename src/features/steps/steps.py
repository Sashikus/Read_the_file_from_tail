from hamcrest import assert_that, equal_to
from behave import *
from random import choice
from string import ascii_uppercase
import subprocess

@given(u'a file with')
def step_impl(context):
    for row in context.table:
        infile = open('../test_data/' + row["filename"] + row["format"], 'w+')
        for i in range(int(row["number_of_lines"])):
          infile.write(''.join(choice(ascii_uppercase) for i in range(20))+'\n')
        infile.close()

@when(u'the script accepts given {format} file')
def step_impl(context, format):
    subprocess.call(['python', 'linesoutput.py','../test_data/test_file.' + format])

@then(u'message should be displayed "{message}"')
def step_impl(context, message):
    output_message = open('../test_data/file.log', 'r').readline()
    assert_that(output_message.strip(), equal_to(message.strip()))
