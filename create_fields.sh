#!/bin/bash
echo "###################### Creating fields ########################" 
echo "##			   READY 			        ##"
echo "##################################################################"



for i in {3150..3999}
do
   echo "train/speaker_09/$i" >> ./fields.txt

done
