#!/bin/bash

#
# ctags 使用方法
#

# 生成 tags文件
ctags -R --c-kinds=+p --fields=+S /usr/include

# 原文：http://smilejay.com/2012/10/vim-for-linux-programmer/
# 说明：
# 上面的命令应该算是建立索引表（默认会在当前目录生成tags文件），然后把生成的tags文件拷贝到你编程的目录。
# 注意：ctags -R 后面不加上绝对路径，就时建立当前目录的下所有文件的索引，那么建立的索引文件中都是写的相对路径，你将tags文件拷贝到其他目录去用时，它就会找不到相应的函数/变量等。
# 注意：运行vim的时候，必须在”tags”文件所在的目录下运行。否则，运行vim的时候还要用”:set tags=”命令设定”tags”文件的路径，这样vim才能找到”tags”文件。
# “-R”表示递归创建，也就包括源代码根目录下的所有子目录下的源程序。
# “tags”文件中包括这些对象的列表：
# 用#define定义的宏
# 枚举型变量的值
# 函数的定义、原型和声明
# 名字空间（namespace）
# 类型定义（typedefs）
# 变量（包括定义和声明）
# 类（class）、结构（struct）、枚举类型（enum）和联合（union）
# 类、结构和联合中成员变量或函数
# “--c-kinds=+p” 表示添加函数原型.
# 更详细的即使见man ctags
#
# VIM用这个”tags”文件来定位上面这些做了标记的对象，下面介绍一下定位这些对象的方法：
# 1) 用命令行。在运行vim的时候加上”-t”参数，例如：
# [/home/admin/src]$ vim -t foo_bar
# 这个命令将打开定义”foo_bar”（变量或函数或其它）的文件，并把光标定位到这一行。
# 2) 在vim编辑器内用”:ta”命令（是”tag”命令的缩写），例如：
# :ta foo_bar
# 3) 最方便的方法是把光标移到变量名或函数名上，然后按下”Ctrl-]”。用”Ctrl-o”退回原来的地方。
# 在Vim中运行“:help tags”可以查询到ctags的用法
#
