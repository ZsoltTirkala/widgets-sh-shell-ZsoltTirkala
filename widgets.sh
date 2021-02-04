#!/bin/bash

contents=${WIDGET_CONTROL:-"mem,cpu"}

echo $contents

./mem.sh
./proc.sh
./user.sh
./disk.sh
