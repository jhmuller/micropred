import os
import sys
print(f"exe {sys.executable}")
import datetime
from microprediction import new_key

#And burn a key
keys = {}
sdict = {}
for diff in range(3,14):
    start = datetime.datetime.now()
    key = new_key(difficulty=diff, )
    end = datetime.datetime.now()
    seconds = (end - start).seconds
    sdict[diff] = seconds
    keys[diff] = key
    print(f" diff {diff}  secs {seconds}  key {key}")
    print("--")
