if [ $# -gt 8 ]; then
	echo "ERROR : Too many arguments. Max = 8"
	exit 1
fi
result=$1
for (( i=2; i<=$#; i++ )); do
	a=$result
	b=${!i}
	if [ $(($a % $b)) -eq 0 ]; then
		result=$(($a / $b))
	elif [ $(($a % $b)) -ne 0 ] && [ $(($b % 5)) -eq 0 ]; then
		result=$(($a * $b))
	elif [ $a -gt $b ]; then
		result=$(($a - $b))
	else
		result=$(($a + $b))
	fi
done
echo "Result :$result"
