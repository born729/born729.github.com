---
layout: post
title: 多Github帐号
date: 2012-05-11 20:26
comments: true
categories: github
---

如果有多Github帐号，想同时工作，ssh需要一番设置，才能工作正常。

### 创建多个key

首先必须要有多个key

```
ssh-keygen -t rsa -C "your-email-address"
```

保存的时候，每个key要选择不同的文件，比如id_rsa_aaa和id_rsa_bbb，做出来的key要通过ssh-add加入到系统中

```
ssh-add id_rsa
```

### 设置ssh的config文件
```
Host github-aaa
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_aaa
Host github-bbb
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_bbb

```
### 调试

分别用下面两条命令来测试ssh key使用是否正确。

```
ssh -vT github-aaa
ssh -vT github-bbb
```

更多过程，可以参考 [这里](http://net.tutsplus.com/tutorials/tools-and-tips/how-to-work-with-github-and-multiple-accounts/)
