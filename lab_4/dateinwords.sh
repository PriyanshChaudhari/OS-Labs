current_date=($(date "+%d %B %Y"))

day=${current_date[0]}
month=${current_date[1]}
year=${current_date[2]}

declare -A day_digits=(
    [01]="First" [02]="Second" [03]="Third" [04]="Fourth" [05]="Fifth" [06]="Sixth"
    [07]="Seventh" [08]="Eighth" [09]="Ninth" [10]="Tenth" [11]="Eleventh" [12]="Twelfth"
    [13]="Thirteenth" [14]="Fourteenth" [15]="Fifteenth" [16]="Sixteenth" [17]="Seventeenth"
    [18]="Eighteenth" [19]="Nineteenth" [20]="Twentieth" [21]="Twenty-First" [22]="Twenty-Second"
    [23]="Twenty-Third" [24]="Twenty-Fourth" [25]="Twenty-Fifth" [26]="Twenty-Sixth"
    [27]="Twenty-Seventh" [28]="Twenty-Eighth" [29]="Twenty-Ninth" [30]="Thirtieth" [31]="Thirty-First"
)

declare -A year_digits=(
    [0]="Zero" [1]="One" [2]="Two" [3]="Three" [4]="Four" [5]="Five" [6]="Six" [7]="Seven"
    [8]="Eight" [9]="Nine"
)

day_in_words=${day_digits[$day]}
year_in_words=""
for digit in $(echo $year | sed -e 's/\(.\)/\1 /g'); do
    year_in_words="${year_in_words}${year_digits[$digit]} "
done

echo "$day_in_words $month, $year_in_words"
