
#!/bin/bash

contents=${WIDGET_CONTROL:-"mem,cpu"}

IFS=","

read -a scripts <<< $contents


#./mem.sh
#./proc.sh
#./user.sh
#./disk.sh


for script in "${scripts[@]}"
do
  ./$script.sh
done
