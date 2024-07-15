# mv
`mv`(move) 命令用于在 Linux 系统中移动或重命名文件和目录。
## 1. 移动文件到目录
```sh
mv project01/file.txt project02
```
这个命令将 project01 目录中的 file.txt 文件移动到 project02 目录。
## 2. 使用通配符批量操作
```sh
mv project01/*.txt project02
```
这个命令将匹配 project01 目录中的所有以 .txt 结尾的文件，并将它们移动到 project02 目录。
##  3. 修改文件名
```sh
mv project01/file.txt project01/newfile.txt
```
这个命令不会移动文件的位置，只会修改文件名。