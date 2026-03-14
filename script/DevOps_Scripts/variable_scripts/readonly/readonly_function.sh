#!/bin/bash

my_function() {
	readonly version="v:1.0.13"
	echo "Read only function is $version"
}

my_function

version="v:1.0.14"


