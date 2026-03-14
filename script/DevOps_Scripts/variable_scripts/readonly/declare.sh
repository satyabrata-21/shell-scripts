#!/bin/bash

# "declare -r" and readonly do the same thing


declare -r ENV="production"

echo "Environment is $ENV"

ENV="development"
