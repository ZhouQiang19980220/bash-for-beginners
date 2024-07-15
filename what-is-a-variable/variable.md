在 Bash 中，变量用于存储和操作数据

# 创建变量
```bash
variable_name=value
```
## 变量命名规则
- 变量名可以包含字母（大小写敏感）、数字和下划线。
- 变量名必须以字母或下划线开头，**不能以数字开头**。
- 如果包含多个字母，使用`_`分隔。
## 注意事项
<span style="color: red;">
在 Bash 中，赋值语句中的等号前后不能有空格!  
</span>


例如下面的赋值语句都是错误的
```sh
hello_world = "Hello, World!"  # 错误
hello_world= "Hello, World!"   # 错误
hello_world ="Hello, World!"   # 错误
```

# 使用变量
在使用变量时，需要在变量名前加上美元符号`$`。例如，使用`echo`来打印变量
```bash
echo $hello_world
```

# 获取当前路径
```sh
current_dir=$(pwd)
```
- 使用 pwd 命令获取当前路径
- 将输出存储在变量:使用命令替换语法，可以将命令的输出存储在变量中。
````
$(pwd)
`pwd`
````

# 单引号和双引号的区别
单引号 `'` 和双引号 `"` 都用于表示字符串，他们的区别如下。
## 单引号`'`
- **字面值解释:**
单引号内的所有字符都被视为字面值，原样输出，不会进行变量替换或命令替换。
- **转义字符无效:**
在单引号内，转义字符（如 `\`）没有特殊意义。

## 双引号`"`
- **变量替换**:双引号内的变量会被替换为变量的值。
- **命令替换**:双引号内的反引号和 `$(...)` 语法会被替换为命令的输出结果。
- **转义字符有效**:双引号内的 `\` 可以用于转义 `$`, `"`,**反引号**和`\`本身。

```sh
#!/bin/bash

# 单引号字符串
single_quote_str='Single-quoted string: $HOME `date`'

# 双引号字符串
double_quote_str="Double-quoted string: $HOME `date`"

# 打印结果
echo $single_quote_str
echo $double_quote_str
```

```
Single-quoted string: $HOME `date`
Double-quoted string: /home/vscode Sun Jul 14 05:31:38 AM UTC 2024
```