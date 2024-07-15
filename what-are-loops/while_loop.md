# while 循环
while 循环用于在指定的条件为真时反复执行一组命令, 基本语法如下。
```bash
while [ condition ]; do
    commands
done
```

一个简单的示例，用于打印1到10。
```bash
counter=1
while [[ "$counter" -le 10 ]]; do
    echo "The counter is at: $counter"
    counter=$((counter + 1))
done
echo "The count has finished."
```
上述脚本的输出结果如下
```
The counter is at: 1
The counter is at: 2
The counter is at: 3
The counter is at: 4
The counter is at: 5
The counter is at: 6
The counter is at: 7
The counter is at: 8
The counter is at: 9
The counter is at: 10
The count has finished.
```
