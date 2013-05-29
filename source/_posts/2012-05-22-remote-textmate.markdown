---
layout: post
title: 远程执行textmate
comments: true
categories: osx
---

textmate用起来很方便，在连上ssh时，自然也希望能够使用textmate，方法很多，列举几个：

### sftp客户端
使用支持sftp的客户端，比如Cyberduck，连上ssh之后，配置文本编辑器为textmate，自然就可以直接编辑了，这种方法的好处简单且比较稳定，但是不适合编辑一个目录。

### sshfs文件系统
将ssh映射为本地文件系统，可以用[macfuse](http://code.google.com/p/macfuse/)，这种方法可能存在一定的稳定性问题，但允许编辑整个目录。

### textmate插件
比如[这个](http://david.olrik.dk/projects/textmate-remote-sync-bundle/)插件，当然只能对textmate有效。