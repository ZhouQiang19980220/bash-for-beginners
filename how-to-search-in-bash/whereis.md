

# `whereis`

`whereis` 命令用于定位命令的二进制文件、源代码文件和手册页。

## `whereis` 的基本用法

使用 `whereis` 命令查找某个命令的相关文件，例如：

```sh
whereis bash
```

输出示例：

```
bash: /bin/bash /usr/share/man/man1/bash.1.gz
```

## b. `whereis -b`

`-b` 选项只显示命令的二进制文件路径。例如：

```sh
whereis -b bash
```

输出示例：

```
bash: /bin/bash
```
注意到，此时输出中没有手册了，因为手册不是二进制文件