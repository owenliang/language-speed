# language-speed

从CPU和IO两个角度衡量4种主流语言的执行速度。

## 涉及到的命令

优化Linux服务器参数

```
sh init.sh
```

cpu测试：

```
java main.java
php main.php
python main.py
gcc -O1 -o main main.c
```

io测试（同步）：
```
安装c hiredis：make install
安装python redis：pip install redis
安装php redis: apt install php-redis

java -cp jedis-2.8.1.jar  main.java
php main.php
python main.py
gcc -O1 -o main main.c -lhiredis
```