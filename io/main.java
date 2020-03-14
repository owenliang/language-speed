package io;

import redis.clients.jedis.Jedis;
 
public class Main {
    public static void main(String[] args) {
        Jedis jedis = new Jedis("192.168.2.169");
        
        for (int i = 0; i < 100000; ++i) {
            jedis.set("bilibili", "www.bilibili.com");
        }
    }
}