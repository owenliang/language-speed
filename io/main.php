<?php

$redis = new Redis();
$redis->connect('192.168.2.169');
for ($i = 0; $i < 100000; ++$i) {
    $redis->set("bilibili", "www.bilibili.com");
}