for num in {2..100}; do
	is_prime=true
	for(( i=2; i<num; i++ )); do
		if [ $(( num % i )) -eq 0 ];
		then
			is_prime=false
			break
		fi	
	done
	if [ $is_prime == true ];
	then
		echo $num
	fi
done
	

