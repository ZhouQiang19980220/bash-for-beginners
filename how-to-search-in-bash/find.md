
# `find`

`find` 命令用于在目录层次结构中查找文件和目录。

## `find` 的基本用法

使用 `find` 命令在指定目录及其子目录中查找文件或目录。例如：

```sh
find /path/to/search -name "filename"
```

## 按名字查找

查找当前目录及其子目录中所有扩展名为 `.md` 的文件：

```sh
find . -name "*.md"
```

查找 `/home/vscode/` 目录及其子目录中名为 `file.txt` 的文件：

```sh
find /home/vscode/ -name "file.txt"
```

### 不区分大小写查找

使用 `-iname` 选项进行不区分大小写的查找。例如：

查找当前目录及其子目录中所有名为 `file.txt` 的文件，不区分大小写：
```sh
find /home/vscode/ -iname "file.txt"
```


## 按类型查找

查找目录

```sh
find /path/to/search -type d -name "dirname"
```

查找文件

```sh
find /path/to/search -type f -name "filename"
```
