#!/usr/bin/python
import os
import sys
import argparse

parser = argparse.ArgumentParser(description="A command line program that outputs the last five lines of a file")
parser.add_argument('data_file', help='input file with lines to print')
args = parser.parse_args()

def main(args):
    filename = sys.argv[1]
    filesize = os.stat(filename).st_size
    bufsize = 8192

    try:
        if filesize > 0:
            with open(filename) as f:
                if filesize <= bufsize:
                    content = f.readlines()
                    if len(content) >= 5 or f.tell() == 0:
                        print("Last 5 list is printed successfully!")
                        print(''.join(content[-5:]))
                    else:
                        print("File contains less than 5 lines!")
        else:
            print("File is empty!")
    except IOError:
        print("File not found!")

if __name__ == "__main__":
    sys.stdout = open('../test_data/file.log', 'w+')  # create a log file
    main(sys.argv[1])
