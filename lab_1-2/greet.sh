#!/bin/bash
ct=$(date +%H)
if [ $ct -lt 12 ]
then
	echo "Good Morning"
elif [ $ct -lt 17 ] && [ $ct -gt 12 ]
then
	echo "Good AfterNoon"
elif [ $ct -lt 23 ] && [ $ct -gt 17 ]
then
	echo "Good Evening"
else
	echo "Hello"
fi