#!/bin/sh

waitstate() {
    want=$1
    until [ "$state" = "$want" ] ; do
        sleep 5;
        state="$(tail -n 1 /proc/acpi/button/lid/LID0/state | cut -d ' ' -f 7)";
    done;
}

lock() {
    set -e;
    i3lock -i $HOME/Imagens/lock.png -t;
    #loginctl suspend;
}

while :
do
    waitstate "closed" ;
    lock;
    waitstate "open" ;
done
