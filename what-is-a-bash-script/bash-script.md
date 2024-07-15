# 什么是 shebang
[什么是 shebang](https://zh.wikipedia.org/wiki/Shebang)
\
上面是维基百科中关于 shebang 的解释

## shebang的作用
1.	**指定解释器** \
    `#!/bin/bash` 告诉操作系统，应该使用 `/bin/bash` 这个路径下的 `Bash` 解释器来执行这个脚本。
2.	**简化执行** \
    有了 shebang 行后，你可以直接通过命令行运行脚本，而不需要显式调用 `Bash`。例如，假设你的脚本名为 `script.sh`，你可以直接运行：
```bash
./hello_world
```
而不需要使用`bash hello_world`。
## 常见的shebang形式
```sh
#!/bin/bash     用于标准 Bash shell 脚本：
#!/bin/sh       用于兼容性更强的 POSIX 标准 shell 脚本
#!/usr/bin/python   用于 Python2
#!/usr/bin/python3  用于 Python3
```
`bin/sh` 通常是指向系统默认 `shell` 的符号链接，在大多数 Unix 和 Linux 系统中，它通常指向一个 POSIX 兼容的 shell，如 `bash`、`dash` 或 `ksh`。使用 `#!/bin/sh` 可以确保脚本在任何 POSIX 兼容的环境中运行，而不依赖于特定的 `shell` 解释器。
使用 env 命令可以提高可移植性，因为它会在环境变量中查找 Python 解释器的路径
```sh
#!/usr/bin/env python
#!/usr/bin/env python3
```

# shell script中的注释
单行注释：在 Shell 脚本中，单行注释以`#`开头
\
多行注释：不支持

# 如何执行脚本
1. 首先查看脚本的权限
```bash
ls -l hello_world
```
```
-r-------- 1 vscode root 62 Jul 13 09:16 hello_world
```
无执行权限，此时如果直接执行，就会出错。

2. 更改脚本权限：使用`chmod`命令。

3. 使用相对路径或者绝对路径执行，例如
```bash
./hello_world
```

# `PATH`环境变量
`PATH` 环境变量是一个非常重要的系统环境变量，用于指定操作系统在搜索可执行文件时所查找的目录列表。当你在命令行中输入一个命令时，操作系统会根据 `PATH` 环境变量中指定的目录顺序来搜索可执行文件。如果在这些目录中找到了该命令对应的可执行文件，操作系统就会执行它。
因此，当脚本在`PATH`中时，我们就不必指出该脚本的路径。

## 查看 PATH
```sh
echo $PATH
```

```
/vscode/bin/linux-x64/f1e16e1e6214d7c44d078b1f0607b2388f29d729/bin/remote-cli:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/vscode/.local/bin
```
每个路径直接使用`:`分割。具体这些路径有什么区别，我们先按下不表。
注意到，最后一个路径为
```
/home/vscode/.local/bin
```
我们可以将用户脚本放入下面的目录以简化命令调用。
首先使用 `mkdir` 创建该目录。然后使用`cp`将脚本复制到该目录下面。

现在可以直接使用下面的方法来直接执行脚本了。
```sh
hello_world 
```