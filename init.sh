#!/bin/bash


# node瓶颈是conntrack
# 下面2项令TCP窗口和状态追踪更加宽松
sysctl -w net.netfilter.nf_conntrack_tcp_be_liberal=1
sysctl -w net.netfilter.nf_conntrack_tcp_loose=1 
# 下面3项调大了conntrack表，保证操作效率
sysctl -w net.netfilter.nf_conntrack_max=3200000
sysctl -w net.netfilter.nf_conntrack_buckets=1600512
sysctl -w net.netfilter.nf_conntrack_tcp_timeout_time_wait=30


# pod瓶颈是TCP协议栈
sysctl -w net.ipv4.tcp_timestamps=1 # 与tw_reuse一起用
sysctl -w net.ipv4.tcp_tw_reuse=1 # 仅作用于客户端，允许复用TIME_WAIT端口（与tcp_rw_recycle不同，该选项不受NAT场景下时间戳不一致问题影响）
sysctl -w net.ipv4.ip_local_port_range="5120 65000" # 端口范围
sysctl -w net.ipv4.tcp_fin_timeout=30 # 缩短TIME_WAIT时间,加速端口回收
# 下面3个均为加强握手队列能力
sysctl -w net.ipv4.tcp_max_syn_backlog=10240
sysctl -w net.core.somaxconn=10240
sysctl -w net.ipv4.tcp_syncookies=1

echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag
