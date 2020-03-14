# include "hiredis/hiredis.h"

int main(int argc, const char* *argv) {
    redisContext *c = redisConnect("192.168.2.169", 6379);
    int i;
    for (i = 0; i < 100000; ++i) {
        redisReply *reply = redisCommand(c, "SET bilibili www.bilibili.com");
        freeReplyObject(reply);
    }
    return 0;
}