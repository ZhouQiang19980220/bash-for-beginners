# mkdir
mkdir 命令用于在Linux 系统中创建目录。

## 基本语法
```sh
mkdir [options] directory_name
```
## 示例
### 1. 创建单个目录
```sh
mkdir project01
```
这个命令将创建一个名为 project01 的目录。

### 2. 创建多个目录
```sh
mkdir project02 project03
```
这个命令将同时创建 project02 和 project03 两个目录。
### 3. 创建嵌套目录
```sh
mkdir -p project01/sub1/sub2
```
- `-p`：递归创建目录，如果上级目录不存在则自动创建。
- 这个命令将递归创建 project01、sub1 和 sub2 目录。如果上级目录不存在，-p 选项将自动创建它们。
