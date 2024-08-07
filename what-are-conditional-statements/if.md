# `if` 语句

`if` 语句用于在条件为真时执行一组命令，在条件为假时执行另一组命令。

下面是一个简单的例子，用来判断一个数是否为偶数。

## 示例

```bash
number=25

if [ $((number % 2)) -eq 0 ];
then
   echo "The number $number is even!";
else 
   echo "The number $number is odd!"
fi
```

### 详细解释

1. **取模运算 `number % 2`**：
   `%` 是取模运算符，用于计算两个数相除的余数。

2. **算术扩展 `$(( ... ))`**：
    - `$(( ... ))` 是算术扩展，用于计算表达式的值并返回结果。
    - 在 `if` 语句中使用 `test` 命令（即 `[ ... ]`）时，必须使用 `$` 来进行算术扩展，将计算结果传递给 `test` 命令进行比较。

3. **判等运算符 `-eq`**：
    - `-eq` 是判等运算符，用于判断两个数是否相等。

4. **`if` 语句结构**：
    - 如果 `if` 语句的条件为真（即 `[ $((number % 2)) -eq 0 ]` 为真），则执行 `then` 语句后面的内容。
    - 否则，执行 `else` 语句后面的内容。

### 完整的 `if` 语句结构

```bash
if [ condition ];
then
   # Commands to execute if condition is true
else
   # Commands to execute if condition is false
fi
```
# 补充:`if`中常用的逻辑符号
## 数字大小判断
| 符号 | 含义 |
| --- | --- |
| `-eq` | 等于 |
| `-ne` | 不等于 |
| `-lt` | 小于 |
| `-le` | 小于或等于 |
| `-gt` | 大于 |
| `-ge` | 大于或等于 |
## 字符串判等
| 符号 | 含义 |
| --- | --- |
| `=` | 等于 |
| `!=` | 不等于 |
## 逻辑运算
| 符号 | 含义 |
| --- | --- |
| `-a` | 逻辑与（AND） |
| `-o` | 逻辑或（OR） |
