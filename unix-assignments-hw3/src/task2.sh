#!/bin/bash
wget https://vk.com/id347745 -q -O - >> html.txt


res=$(grep -o 'profile_time_lv' html.txt)

if [[ $res == 'profile_time_lv' ]]
	then status=false
	else status=true
fi

while true 
do
	rm html.txt
	wget https://vk.com/id347745 -q -O - >> html.txt
	res=$(grep -o 'profile_time_lv' html.txt)
	if [[ $res == 'profile_time_lv' ]]
		then status_new=false
		else status_new=true
	fi

	if [ $status != $status_new  ];
		then
		status=$status_new
		if [[ $status == false ]]
			then wall "AM OFFLINE"
			else wall "AM ONLINE"
		fi
	fi
	sleep 60s
done
