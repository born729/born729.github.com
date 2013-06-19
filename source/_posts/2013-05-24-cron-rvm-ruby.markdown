---
layout: post
title: 用cron执行ruby脚本
date: 2013-05-24 20:46
comments: true
categories: ruby
---

在Linux下cron是非常容易使用的自动化执行工具，类似windows的计划任务，cron的独特的定时设置方式，简洁而灵活，但在使用ruby脚本时却遇到了麻烦。 用crontab -e 添加了下面的脚本后：

```
0 */8 * * * ruby /home/myname/test.rb
```

我的本意很简单，每8小时运行一次test.rb，从/var/log/syslog来看，cron已经正确调度了，可是看起来test.rb没有被执行，因为syslog中没有记录test.rb的标准输出，所以我修改了crontab为：

```
0 */8 * * * ruby /home/myname/test.rb >> /home/myname/cron.log 2>&1
```

后面的2>&1是为了将标准错误输出和标准输出都记录，通过cron.log，我看到是因为ruby命令没有找到，我随之理解了，ruby是用RVM安装的，因此ruby的整个执行环境依赖于当前用户的shell，但cron在执行脚本时，环境是一个全新的shell，自然连ruby都不能找到了，对于这个问题，google上有很多解决方法，比如在crontab中增加环境变量，比如在执行test.rb前先执行RVM的初始化脚本，但是我觉得都不够优雅，多次尝试之后，最终的解决方案是：

```
0 */8 * * * bash -l /home/myname/test.sh
```

而test.sh的内容很简单，就是

```
ruby /home/myname/test.rb
```

这个方法是利用了 bash 的-l 参数来重建一个shell环境，但是遗憾的是，这样的情况下不能直接执行ruby，而必须是一个shell脚本，所以额外单独写了一个test.sh。曾经看到一个我认为可行不想要额外增加一个shell脚本的解决方法是：

```
0 */8 * * * bash -l -c /home/myname/test.rb
```

可惜在我的环境下，没有成功，可能-c这个参数我还没有参透吧。
