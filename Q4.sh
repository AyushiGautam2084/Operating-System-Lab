ps_ef_output=$(ps -ef)
ps_ux_output=$(ps -ux)
# Loop through the output of ps -ef and get the process ID for processes with parent ID 2
while read line; do
  pid=$(echo $line | awk '{print $2}')
  ppid=$(echo $line | awk '{print $3}')
  if [ $ppid -eq 2 ]; then
    # Get the details for the process from the output of ps -ux
    details=$(echo "$ps_ux_output" | grep "^[^ ]\+ [^ ]\+ $pid ")
    echo Process ID: $pid
    echo $details
  fi
done
