usrlist=$(-d: /etc/passwd)
maxlength=$(-d: /etc/passwd | wc -L)
minlength=$maxlength
minusr=""

for usr in $usrlist
do
if [ ${#usr} -eq $maxlength ]
	then
	echo "Longest Username is: $usr"
elif [ ${#usr} -lt $minlength ]
	then
	minlength=${#usr}
	minusr=$usr
fi
done
	echo "Shortest Username is: $minusr"