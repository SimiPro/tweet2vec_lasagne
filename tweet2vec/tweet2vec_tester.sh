#!/bin/bash

# specify test file here
fulltestdata="../my_testing_file.txt"

# specify model path here
modelpath="best_model/"

# specify result path here
resultpath="result/"

mkdir -p $resultpath

# test
python test_char.py $fulltestdata $modelpath $resultpath
