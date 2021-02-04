#!/bin/bash

memory_usage(){
	memtotal=$(sudo cat /proc/meminfo | grep -w MemTotal)
	memfree=$(sudo cat /proc/meminfo | grep -w MemFree)
	echo "#####################MEMORY#####################"
	echo $memtotal
	echo $memfree
	echo "################################################"
}
memory_usage
