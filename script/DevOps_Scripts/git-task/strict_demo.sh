#!/bin/bash


set -euo pipefail 


echo "Script started"

# set -e

ls /dir/doesnot/exist

echo "Testing failing command (set -e)"

# set -u

echo "value is $UNDEFIND_VAR"

echo "Testing undefind variable"

# set -o pipefail

echo "Hello" | grep "Hi"

echo "Testing pipeline failure"

echo "Script completed"





