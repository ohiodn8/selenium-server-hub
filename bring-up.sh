#!/bin/bash

echo "Starting Selenium-Server server." 
export DISPLAY=:0 
java -jar /home/ohiodn8/selenium-server/selenium-server-standalone-3.jar -role hub &>/home/ohiodn8/selenium-server/log-bring-up.log &** 
PID=$! 
### Create the lock file ### 
echo $PID > /var/run/selenium-server.pid 
echo $"selenium-server server startup $PID." 
