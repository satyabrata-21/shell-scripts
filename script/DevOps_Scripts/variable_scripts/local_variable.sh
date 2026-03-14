#!/bin/bash

my_function() {
	local city="Bangalore"
	echo "Inside function: $city"
}

my_function

echo "Outside function: $city"
