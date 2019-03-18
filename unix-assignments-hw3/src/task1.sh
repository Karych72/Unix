#!/bin/bash

crontab -l > time_file.txt
echo "00 18 * * 2,3,4,5 wall \"Мягкий дедлайн по Unix в пятницу 23:59\"" >> time_file.txt
crontab time_file.txt
rm time_file.txt
