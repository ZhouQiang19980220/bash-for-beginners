# 传统的for循环
`for`循环是一种强大的工具，用于遍历列表中的每一个元素或在一定范围内进行循环操作。
## 基本语法
```sh
for var in list; do
    commands
done
```
## 示例
```sh
services=("loadbalancer" "virtualmachine" "storage")

for i in "${services[@]}"
do
   echo $i
done
```
1. **定义数组**\
`services=("loadbalancer" "virtualmachine" "storage")`
这一行定义了一个数组，在`Bash`中，数组的元素用空格分隔，并用圆括号括起来。
2. **遍历数组**\
`${services[@]}`：这是数组展开的方式，表示数组中的所有元素。它会将数组中的每个元素作为独立的参数传递给循环。
执行结果如下
```
loadbalancer
virtualmachine
storage
```
传统的`for`循环类似 python 的语法。
# 新的 for 循环
类似 C 语言的语法
```sh
for (( i=0; i<5; i=i+1 )); do
    echo "The counter is at: $i"
```
注意: `((...))`运算符

执行结果如下
```
The counter is at: 0
The counter is at: 1
The counter is at: 2
The counter is at: 3
The counter is at: 4 
```
