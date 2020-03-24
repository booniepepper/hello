import sys

args = sys.argv

name = "world" if len(args) == 1 else args[1]

print("Hello {}!".format(name))

