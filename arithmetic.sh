read -p "Enter the value of a: " a;
read -p "Enter the value of b: " b;
read -p "Enter the value of c: " c;

declare -A outputs
outputs[a+b*c]="$(( $a + $b * $c ))"
outputs[a*b+c]="$(( $a * $b + $c ))"
outputs[c+a/b]="$(( $c + $a / $b ))"
outputs[a%b+c]="$(( $a % $b + $c ))"

echo "Original Output"
echo "a+b*c=" ${outputs[a+b*c]}
echo "a*b+c=" ${outputs[a*b+c]}
echo "c+a/b=" ${outputs[c+a/b]}
echo "a%b+c" ${outputs[a%b+c]}

echo "Descending Order: "
for k in "${!outputs[@]}"
do
    echo $k ' - ' ${outputs["$k"]}
done |
sort -rn -k3,3rn

echo "Ascending Order: "
for k in "${!outputs[@]}"
do
    echo $k ' - ' ${outputs["$k"]}
done |
sort -n -k3