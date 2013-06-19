---
layout: post
title: Rails在VPS的部署
date: 2012-04-28 20:26
comments: true
categories: osx
---

这是我们在VPS的部署方案。

### 需求
- VPS安装Ubuntu 11.04
- RVM安装ruby和rails
- Nginx和Passenger模块
- PostgreSQL

### VPS
- 我们使用Ubuntu11.04，设置好ssh


### Ruby和Rails
ruby要用1.9.3以上版本，因为1.9.3版本解决了一个性能问题，Rails用3.1以上版本，因为在之前的版本会有assets方面的兼容性问题。


### Nginx
```
gem install passenger
sudo apt-get install libcurl4-openssl-dev
rvmsudo passenger-install-nginx-module
```

安装nginx启动脚本
```
wget http://www.smashingmagazine.com/files/nginx
sudo mv nginx /etc/init.d/nginx
sudo chmod +x /etc/init.d/nginx
sudo /usr/sbin/update-rc.d -f nginx defaults
```

### PostgreSQL
我们偏爱PostgreSQL，除了PostgreSQL成熟以外，还因为PostgreSQL和Sqlite比较接近的SQL语句，这样可以在两者间随意切换。
```
sudo apt-get install postgresql libpq-dev
```
