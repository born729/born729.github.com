---
layout: post
title: ruby vs python
date: 2013-05-29 23:35
comments: true
categories: ruby
---

Ruby和Python是我最常用的两门脚本语言，他们两个都足够通用，不像PHP和Javascript那么局限，所以很有必要从使用者的角度，给他们两个做一个比较。

### 语法

语法上，我更喜欢Ruby，Python的特殊缩进是很多程序员比较难接受的一点，仅仅是空格的排版就决定语法逻辑，我很不喜欢，况且还有一个Tab在捣乱，每次拿到一个新编辑器写Python代码，都要去设置空格替换Tab，否则简直没法工作。所以Ruby胜在符合常规。

### 性能

当前来看，解释器性能上，毫无疑问应该是Python占优，我用过Ruby 1.9.2，曾经遇到过因为Require嵌套比较多，导致脚本启动特别慢的问题，换到1.9.3版本才稍稍正常些，但感觉还是比不上Python的性能。 

### 扩展包

Ruby自然是用gem来管理扩展包，如果包之间依赖关系复杂，还可以使用bundle来维护这个依赖关系。Python里的easy_install应该是gem的等价物，但bundle就没有合适的等价物了。