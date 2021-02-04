#!/bin/bash

cpu_info() {
	cpu_model_name=$(sudo cat /proc/cpuinfo | grep -m 1 "model name")
	cpu_all_cores=$(( $(lscpu | awk '/^Socket\(s\)/{ print $2 }') * $(lscpu | awk '/^Core\(s\) per socket/{ print $4 }') ))
	cpu_cores=$(sudo cat /proc/cpuinfo | grep -m 1 "cpu cores")
	cpu_clock_frequency=$(lscpu | grep MHz)
	echo "#####################-CPU-######################"
	echo $cpu_model_name
	echo "all cpu cores : $cpu_all_cores"
	echo $cpu_cores
	echo $cpu_clock_frequency
	echo 
}

cpu_info
