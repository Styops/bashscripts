#!/bin/bash

a=$(wc -c /var/log/apache2/access.log | awk '{print $1}'); 
b=512; 
 if [ "$a" -gt "$b" ]; then  
echo "yes" ;
cd /var/log/apache2/;
sudo tar -zcvf apache2.access.log.tar.gz  /var/log/apache2/access.log;
> /var/log/apache2/access.log; 
else echo "no";
fi
