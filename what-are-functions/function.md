# 函数
函数用于将一组命令组合在一起，并通过调用函数名来执行这些命令。函数可以接受参数，并且可以返回值。使用函数可以提高脚本的可读性和可维护性。

## 定义函数
基本语法
```
function_name() {
    commands
}
```
比如下面的函数用来判断`$1`是基数还是偶数，并在 terminal 打印相应的内容。
```bash
check_even () {
    local mod=2
    echo "The value of mod is $mod"
    if [ $(("$1" % $mod)) -eq 0 ]
    then 
       echo "The number $1 is even!";
    else 
       echo "The number $1 is odd!"
    fi
}
```
1. `check_even ()`: 定义函数名
2. `local mod=2`: 局部变量 mod，并将其值设置为 2。函数之外无法使用这个局部变量。
3. 其余内容为`if`语句。
4. `$1`: 函数的第一个参数。

## 调用函数
如果不需要传参，则直接使用函数名即可。
函数也可以接受参数，比如
```bash
number=2344
check_even $number
```


