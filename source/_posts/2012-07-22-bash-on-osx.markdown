---
layout: post
title: bash on osx
comments: true
categories: osx
---

bash在运行的时候分两种情况，login shell和非login shell。
login shell会执行下列文件：

* /etc/profile
* ~/.bash_profile
* ~/.bash_login(没有.bash_profile的情况下运行)
* ~/.profile(没有.bash_login的情况下运行) 

非login shell则是 ~/.bashrc, osx和Linux不一样的是，每次运行Terminal，都是login shell，所以osx下一个常见问题就是.bashrc的设置不起作用，所以，可以在bash_profile下增加这样一行:
```
[ -r ~/.bashrc ] && source ~/.bashrc
```
这样，.bashrc中的设置就在osx下也可以起作用了。

顺便，如果切换shell的话，可以用 
```
sudo chsh -s /bin/zsh username
```
临时切换shell，可以用
```
exec bash
```
