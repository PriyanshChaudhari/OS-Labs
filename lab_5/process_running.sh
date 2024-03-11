pids=(`pidof $1`)

if [[ -n "$pids" ]];
then
	echo "$pids"
else
	echo "Process is not running."
fi