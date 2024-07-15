
# 什么是 Redirection？

在 Linux 系统中，重定向（redirection）是将命令的输入或输出重定向到文件或其他命令的过程。重定向可以将**标准输入**、**标准输出**或**标准错误流**重定向到文件或其他命令。重定向使得在 shell 中处理输入和输出变得非常灵活和强大。

## 重定向标准输出流
如果直接直接如下命令，则会在 terminal 回显输出。
```bash
ls -l
```
我们也可以使用 `>` 将其输出到某个文件中：

```bash
ls -l > file.txt
```
如果重定向到一个已有的文件，则会覆盖该文件。
## 重定向标准输出流且追加:`>>`
```bash
ls -l >> file02.txt
```

## 重定向标准错误流:`2>`
标准错误流也是经常输出到 terminal 的流之一。例如，对一个不存在的目录执行 `ls` 操作，就会在 terminal 显示标准错误流：

```bash
ls dir
```

```
ls: cannot access 'dir': No such file or directory
```

标准错误流也可以重定向到文件：

```bash
ls dir 2> error.txt
```
## 重定向标准错误流且追加:`2>>`

## 一个相对复杂的命令

该命令的作用是将标准输出流和标准错误流全部重定向到 `error.txt`：

```bash
ls -l ./dir > error.txt 2>&1
```
- `> error.txt`：将标准输出重定向到 error.txt 文件。如果文件已经存在，它将被覆盖。
- `2>&1`：将命令的标准错误重定向到与标准输出相同


## 更简单的符号：`&>`
该命令的作用是将标准输出流和标准错误流全部重定向到 `error.txt`：
```bash
ls -l ./dir &> error.txt
```

## 合并文件内容

```bash
cat part1.txt part2.txt > paragraph.txt
```

这个命令的作用是将 part1.txt 和 part2.txt 的内容合并，并重定向到 paragraph.txt 文件中。如果 paragraph.txt 文件已经存在，它将被覆盖。

