if grep -q "void main" $1
then
	echo "void main()"
elif grep -q "int main" $1
then
	echo "int main()"
else
	echo "Neither of void main() or int main() is used."
fi