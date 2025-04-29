#!/bin/bash

# Total CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
echo "Total CPU Usage: $cpu_usage%"

# Memory usage
memory_stats=$(free -h | grep Mem)
total_mem=$(echo $memory_stats | awk '{print $2}')
used_mem=$(echo $memory_stats | awk '{print $3}')
free_mem=$(echo $memory_stats | awk '{print $4}')
memory_percent=$(echo "scale=2; ($used_mem / $total_mem) * 100" | bc)
echo "Memory Usage: $used_mem / $total_mem ($memory_percent%)"

# Disk usage
disk_stats=$(df -h | grep '^/dev/')
echo "Disk Usage:"
echo "$disk_stats"
echo "-----------------------------------"
# Network usage
network_stats=$(ifstat -S 1 1)
echo "Network Usage:"
echo "$network_stats"
echo "-----------------------------------"
# Top 5 processes by memory usage
top_processes=$(ps aux --sort=-%mem | awk 'NR<=6{print $0}')
echo "Top 5 Processes by Memory Usage:"
echo "$top_processes"
echo "-----------------------------------"
# Top 5 processes by CPU usage
top_processes_cpu=$(ps aux --sort=-%cpu | awk 'NR<=6{print $0}')
echo "Top 5 Processes by CPU Usage:"
echo "$top_processes_cpu"
echo "-----------------------------------"
# System load average
load_avg=$(cat /proc/loadavg | awk '{print $1, $2, $3}')
echo "System Load Average (1, 5, 15 min): $load_avg"
echo "-----------------------------------"
# Uptime
uptime_info=$(uptime)
echo "System Uptime: $uptime_info"
echo "-----------------------------------"
# Last 10 logins
last_logins=$(last -n 10)
echo "Last 10 Logins:"
echo "$last_logins"  

# Failed Login Attempts
echo "Failed Login Attempts:"
grep "Failed password" /var/log/auth.log | wc -l