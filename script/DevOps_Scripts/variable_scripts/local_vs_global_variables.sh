#!/bin/bash

name="Satyabrata"

my_function () {
	local name="Rahul"
	echo "Inside name variable is $name"
}

my_function

echo "Outside name variables is : $name"
