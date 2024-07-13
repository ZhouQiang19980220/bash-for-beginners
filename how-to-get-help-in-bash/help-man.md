# How to Get Help in Bash

## help
在终端输入如下命令
```bash
help cd
```
则会显示 cd 的用法。不出意外的话，返回的内容如下：
> cd: cd [-L|[-P [-e]] [-@]] [dir]\
Change the shell working directory.

    Change the current directory to DIR.  The default DIR is the value of the
    HOME shell variable.

    The variable CDPATH defines the search path for the directory containing
    DIR.  Alternative directory names in CDPATH are separated by a colon (:).
    A null directory name is the same as the current directory.  If DIR begins
    with a slash (/), then CDPATH is not used.

    If the directory is not found, and the shell option `cdable_vars' is set,
    the word is assumed to be  a variable name.  If that variable has a value,
    its value is used for DIR.

    Options:
        -L        force symbolic links to be followed: resolve symbolic
                links in DIR after processing instances of `..'
        -P        use the physical directory structure without following
                symbolic links: resolve symbolic links in DIR before
                processing instances of `..'
        -e        if the -P option is supplied, and the current working
                directory cannot be determined successfully, exit with
                a non-zero status
        -@        on systems that support it, present a file with extended
                attributes as a directory containing the file attributes

    The default is to follow symbolic links, as if `-L' were specified.
    `..' is processed by removing the immediately previous pathname component
    back to a slash or the beginning of DIR.

    Exit Status:
    Returns 0 if the directory is changed, and if $PWD is set successfully when
    -P is used; non-zero otherwise.

其中
- **方括号** []：表示方括号内的内容是可选的，可以省略。
- **竖线** |：表示可以选择多个选项中的一个。
所以
```bashcd
[-L|[-P [-e]] [-@]] [dir]
```
 的意思是：
1.	`-L`、`-P` 和 `-@` 选项是可选的。
2.	`-L` 和 `-P` 是互斥的选项，只能选择其中一个，不能同时使用。
3.	`-P` 选项可以与 `-e` 选项一起使用，但 `-e` 必须在 `-P` 之后。
4.	`-@` 是一个独立的可选项。
5.	`dir` 是要切换到的目标目录，也是可选的。如果省略`dir`，则默认切换到`HOME`目录。

此外，`help`命令还会解释各个选项的含义，比如`-L`选项的作用是强制遵循符号链接。

## man
如果`help`的信息不够详细，可以使用`man`命令来获得详细的手册(manual)
例如在终端输入如下命令
```bash
man cd
```
我们将会得到这个命令的完整手册。
