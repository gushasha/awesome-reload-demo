#!/bin/bash

diff /home/www/test/shutdown-simple_new /home/www/test/shutdown-simple
if [ $? -ne 0 ]
then
        mv /home/www/test/shutdown-simple_new /home/www/test/shutdown-simple
		echo "mv success"
		supervisorctl restart test
		echo "code restart success"
fi