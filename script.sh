#!/bin/bash
 for i in /usr/bin/*; do
     if strings $i | grep -q "Unable to fork"; then
        #echo line with green light
         echo "$i is executable"
     else
         echo "$i is not executable"
     fi
 done
