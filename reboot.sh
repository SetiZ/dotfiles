 #!/bin/bash

count=0

entry=`cat /boot/grub/grub.cfg |grep ^'menuentry\|submenu'|sed "s/menuentry '\([^']*\)' .*/\1/"|sed "s/submenu '\([^']*\)' .*/\1/"`

while read -r line
do
    result=("${result[@]}" "$line")
    options=("${options[@]}" "$((++count))" "$line")
done <<< "$entry"

choice_height=$count
height=15
width=70
menu="Chose next reboot:"

cmd=$(dialog --clear \
                --menu "$menu" \
                $height $width $choice_height \
                "${options[@]}" \
                2>&1 >/dev/tty)

clear
if [ ! -z $cmd ]
then
    echo "Next reboot: ${result[$((--cmd))]}"
    sudo grub-reboot $cmd
fi
