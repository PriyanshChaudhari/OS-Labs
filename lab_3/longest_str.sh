sublist=("Advanced Java Technologies" "Compiler Design" "Computer Networks"  "Operating Systems" "Software Engineering")

longest_string=""
maxlength=0

for sub in "$sublist"
do
    current_length=${#sub}

    if [ current_length > maxlength ]
 then
        longest_string="$sub"
        maxlength=$current_length
    fi
done

echo "Longest string: $longest_string"
