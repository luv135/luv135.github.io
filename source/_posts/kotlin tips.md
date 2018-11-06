---
title: Kotlin tips
tags: 
- kotlin
---

# 扩展函数/泛型使用
对于TextView, Button, 调用该函数,直接返回该函数对象,不需要在转换
```java
fun <T : View> T.addToLayout(): T {
			
}
```
