#!/bin/bash


use_local() {
	local x=10
	echo "this is local value $x"


}

use_global() {
	x=29
	echo "this is global value $x"
	
}


use_local
 echo "Local $x"
 use_global
echo "Globa $x"

