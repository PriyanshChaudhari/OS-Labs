password_gen() {
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 8
}

echo "Five passwords having alphanumeric characters -"

for i in {1..5}; do
    password=$(password_gen)
    echo "$i: $password"
done