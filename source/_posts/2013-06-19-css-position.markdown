---
layout: post
title: CSS position和display
date: 2013-06-19 07:00
comments: true
categories: css
---

CSS规范中position的定义可以取四种值，并且又和其他属性，比如display，LRTB(left,right,top,bottom的缩写)相关，所以不容易理解清楚，下面是我的解释：

# position

* static - 默认值，对象遵循HTML定位规则,此时LRTB无效。 

* relative - 对象将依据LRTB等属性在正常位置基础上偏移。

* absolute - 将对象从文档流中拖出，使用LRTB等属性相对于其最接近的一个有定位设置的父对象进行绝对定位。如果不存在这样的父对象，则依据 body 对象。absolute定位时，margin失效。

* fixed - 类似absolute，但是却直接相对于浏览器窗口，与父无关。

如果单从定义上看，这四种区别还比较模糊，尤其是relative和absolute是有点晕的，但结合应用场景，就很明确了，通常大部分元素都是static，如果想将某个元素脱离出来绝对定位，可以用absolute或者fixed，这时要看你希望相对的点，如果希望相对浏览器窗口固定，用fixed，如果希望相对父元素固定，用absolute。

但是注意absolute所相对的这个父元素必须不是static，通常就指定一下relative就好了，因为relative本身不改变元素的位置（前提是没有通过LRTB偏移），CSS这样设计的用意很容易理解，可以灵活的控制absolute元素想相对的元素，比如，想相对父的父，只要父为static，而父的父指定一下relative就可以了。

# display



