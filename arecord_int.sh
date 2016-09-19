
#!/bin/sh  
#
# record.sh
#
# This is a script that will automatically record a radio audio stream to a .wav file using the arecord program.
#
#   arecord program significant options:
#
#   -r, --rate=#<Hz> Sampling rate in Hertz. The default rate is 8000 Hertz.
#
#   -d, --duration=# Interrupt recording after # seconds.
#
#   -c, --channels=# The number of channels.  The default is one channel.
#
#####################################################################################################################################
#name=$2
#path=$1
echo "###################### Welcome to recording ########################" 
echo "##			   READY 			        ##"
echo "##################################################################"
echo "Set Path to save file and name file "
echo "PATH (Ex: /home/nguyenchanh/Desktop/audio2): "
read path 
echo "NAME (Ex: 1 -> 1.wav): "
read name 
echo "Press ENTER key to start record ... "
while read line ; do
	
	arecord -d 10 -r 8000 -t wav -f S16_LE $path/$name.wav &              # Records audio stream for 10 seconds
	sleep 0.5
	echo 
	echo "Press any key to stop record  !!! "
	while read line ; do
		killall -KILL arecord 
		break
	done
	name=$[$name+1]
	echo "######################### 	SAVE 	##########################" 
	echo "##			         			        ##"
	echo "##################################################################"
	echo  
	echo "Press ENTER key to start record file $name.wav or Ctrl+C to exit !!! "
	
done
echo "DONE  !!! "
echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"  
				
