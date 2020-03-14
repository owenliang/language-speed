import redis 

r = redis.Redis(host='192.168.2.169')
for i in range(100000):
    r.set("bilibili", "www.bilibili.com")