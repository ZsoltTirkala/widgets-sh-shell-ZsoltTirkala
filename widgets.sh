
#!/bin/bash
# the while loop will rerun after 3 sec, use ctrl+c to terminate script

cleanup(){
kill -s SIGTERM $!
clear
exit 0
}
trap cleanup SIGINT SIGTERM

contents=${WIDGET_CONTROL:-"mem,cpu"}

IFS=","
clear
read -a scripts <<< $contents
while [ 1 ]
do
	for script in "${scripts[@]}"
	do
  	./$script.sh
	done
sleep 3 & wait $!
clear
done
