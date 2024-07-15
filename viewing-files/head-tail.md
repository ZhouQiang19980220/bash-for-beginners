# `head` 和 `tail`
## `head`

`head` 命令用于显示文件的前部分内容，默认情况下显示前 10 行。

### 查看文件的前 10 行

```bash
head fake001.log
```

这个命令将显示 `fake001.log` 文件的前 10 行内容。

### 查看文件的前 N 行

```bash
head -n 3 fake001.log
```

这个命令将显示 `fake001.log` 文件的前 3 行内容。

## `tail` 命令

`tail` 命令用于显示文件的后部分内容，默认情况下显示后 10 行。

### 查看文件的后 10 行

```bash
tail fake001.log
```

这个命令将显示 `fake001.log` 文件的后 10 行内容。

### 查看文件的后 N 行

```bash
tail -n 3 fake001.log
```

这个命令将显示 `fake001.log` 文件的后 3 行内容。

