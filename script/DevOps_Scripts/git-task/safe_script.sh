#!/bin/bash

set -e
dir="/tmp/deops-test1"
mkdir $dir || echo "directory already exists"
cd $dir || echo "cann't change dir"
touch file.txt || echo "Cannot create a file"
