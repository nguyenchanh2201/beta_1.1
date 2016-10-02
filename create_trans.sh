#!/bin/bash
## declare an array variable
declare -a act=("bật" "tắt" "kiểm tra" "tăng" "giảm")
declare -a dev=("đèn" "quạt" "điều hòa" "nhạc" "báo cháy" "chống trộm" "tất cả")
declare -a are=("phòng ngủ" "phòng khách" "lầu" "bếp" "sân" "thiết bị điện")
declare -a num=("mười" "chín" "tám" "bảy" "sáu" "năm" "bốn" "ba" "hai" "một")
# get length of array num
arraylength=${#num[@]}
# get argument 
count=$1
# clear data 
truncate -s 0 data.txt
## now loop through the above array
for i in "${act[@]}"
do
	for j in "${dev[@]}"
	do	
   		for k in "${are[@]}"
		do	
   			for (( l=0; l<${arraylength}; l=l+2 ));
			do	
   				echo "<s> $i $j $k ${num[$l]} $i $j $k ${num[$l+1]} </s> ($count)" >> data.txt
				count=$[$count+1]			
			done
		done	
	done
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also




