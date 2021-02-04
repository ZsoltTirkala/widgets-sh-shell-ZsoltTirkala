#!/bin/bash


process_count=$(ps -e | wc -l)
echo "number of running processes: $process_count"
