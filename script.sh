#!/bin/bash
#create function to create variable A and set it to 1 and then print it value
function functionA {
    local A=1
    echo "Value of A is: $A"
}
A=2
functionA
echo "Value of A outside function is: $A"   