---
layout: post
title: "Octopress"
date: 2012-04-10 13:01
comments: true
categories: 
---

[Octopress](http://octopress.org)是非常方便的静态博客程序，尤其适合github。
### 安装
```
git clone git://github.com/imathis/octopress.git octopress
cd octopress
bundle install
rake install
```
这就把Octopress装好了，上面的目录名octopress可以任意更改，接下来就需要设置github绑定了：
```
rake setup_github_pages
```
上面的命令会有提示输入git路径，注意要输入git的全路径，比如git@github.com:xxx/yyy.git
### 使用
新增博客帖子很简单，可以使用命令：
```
rake new_post["title"]
```
当然也可以在source/_posts目录下手动添加博客，要编译生成静态页面，并上传到github

```
rake generate
rake preview
rake deploy
```
如果你的ruby gem比较复杂，则需要在命令前使用bundle exec。

如果要上传源文件：
```
git add .
git commit -m "source commit"
git push origin source
```
### 美化
如果喜欢某个样式，可以使用git submodule来安装：
```
git submodule add git://github.com/octopress-themes/xxx.git .themes/xxx
rake install['xxx']
```
这样做的好处是，可以随时更新theme
```
cd .themes/xxx
git pull origin master
```