
#!/bin/bash

contents=${WIDGET_CONTROL:-"mem,cpu"}

IFS=","

read -a scripts <<< $contents

for script in "${scripts[@]}"
do
  ./$script.sh
done
