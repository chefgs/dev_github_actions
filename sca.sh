#!/bin/sh
ls -ltr | grep drw | grep -v cookbook | awk '{print $9}' | while read dir_name 
do
# berks vendor ../cookbook_cache
echo $dir_name
cookstyle $dir_name
done
