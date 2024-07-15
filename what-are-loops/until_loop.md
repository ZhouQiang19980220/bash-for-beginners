# until loop
在 `Bash` 中，`until`循环用于在指定的条件为假时反复执行一组命令。它与`while`循环相反，`while`循环在条件为真时执行，而 `until`循环在条件为假时执行。
下面看一个具体的例子
```bash
counter=1
until [[ "$counter" -gt 10 ]]; do
    echo "The counter is at: $counter"
    counter=$((counter + 1))
done
echo "The count has finished."
```
上述代码在[until_loop](./until_loop)。添加执行权限并执行后，结果如下
```bash
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
可以看到，功能与上节的[while loop](./while_loop)类似。

这个脚本的重点在于下面这一句
```sh
until [[ "$counter" -gt 10 ]];
```
仔细看其中的条件，`counter`从 1 开始，只有条件为`false`的之后才执行循环。当`counter`变成 11 的时候，条件从`false`转变为`true`，此时循环结束。
