#!/bin/bash

memory_usage(){
	memtotal=$(awk '$3=="kB"{$2=$2/1024;$3="MB"} 1' /proc/meminfo | column -t | grep MemTotal)
	memfree=$(awk '$3=="kB"{$2=$2/1024;$3="MB"} 1' /proc/meminfo | column -t | grep MemFree)
	echo "####################-MEMORY-####################"
	echo $memtotal
	echo $memfree
	echo 
}
memory_usage
