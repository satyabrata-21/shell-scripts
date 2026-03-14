#!/bin/bash

num1=5.5
num2=2.5

# bc allows floating point calculations.Basic calculator

result=$(echo "$num1 + $num2" | bc )

echo "$result"
