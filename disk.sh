#!/bin/bash

disk_info() {
	disk_total=$(df -k -h -B MB | sed -n 4p | awk '{ print $2}')
	disk_free_space=$(df -k -h -B MB | sed -n 4p | awk '{ print $4; }')
	disk_used_space_percentage=$(df -k -h | sed -n 4p | awk '{ print $5}')
	echo "####################-DISK-######################"
	echo "disk total space : $disk_total"
	echo "disk free space : $disk_free_space"
	echo "disk used space : $disk_used_space_percentage"
	echo
}

disk_info
