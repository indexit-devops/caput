#!/usr/bin/bash

FRUIT=kiwi
QTY=09
echo "I have $FRUIT in my store"
echo "Number of $FRUIT I have is $QTY "
if [ $QTY -lt 10 ]; then
	echo "You need to order $FRUIT from Vendor as stock is less"
fi
