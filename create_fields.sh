#!/bin/bash
echo "###################### Welcome to recording ########################" 
echo "##			   READY 			        ##"
echo "##################################################################"


for i in {3001..3149}
do
   echo "train/speaker_09/$i" >> ./fields.txt

done
