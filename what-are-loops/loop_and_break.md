# break
`break`用来跳出循环，看下面的例子
如果用户输入的数字为`[1, 25]`这个范围内，则进入下一次循环，否则跳出循环。
```bash
while true; do
  read -p "Enter a number between 1 and 25: " n
  if [[ $n -ge 1 && $n -le 25 ]]; then
    echo "You entered $n"
  else 
    echo "You didn't enter a number in range, goodbye."
    break
  fi
done

echo "Break happened"
```bash