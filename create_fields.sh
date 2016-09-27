#!/bin/bash
echo "###################### Welcome to recording ########################" 
echo "##			   READY 			        ##"
echo "##################################################################"


for i in {1201..2075}
do
   echo "train/speaker_09/$i" >> ./fields.txt

done
