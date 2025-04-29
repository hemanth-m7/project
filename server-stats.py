<<<<<<< HEAD
import psutil
import os
import platform

# 1. Total CPU Usage
cpu_usage = psutil.cpu_percent(interval=1)
print(f"Total CPU Usage: {cpu_usage}%")

# 2. Total Memory Usage
mem = psutil.virtual_memory()
print(f"Memory Usage: {mem.used / (1024 ** 3):.2f} GB / {mem.total / (1024 ** 3):.2f} GB ({mem.percent}%)")

# 3. Total Disk Usage
disk = psutil.disk_usage('/')
print(f"Disk Usage: {disk.used / (1024 ** 3):.2f} GB / {disk.total / (1024 ** 3):.2f} GB ({disk.percent}%)")

# 4. Top 5 Processes by CPU Usage
print("Top 5 Processes by CPU Usage:")
for proc in sorted(psutil.process_iter(['pid', 'name', 'cpu_percent']), key=lambda p: p.info['cpu_percent'], reverse=True)[:5]:
    print(f"{proc.info['pid']} - {proc.info['name']} - {proc.info['cpu_percent']}%")

# 5. Top 5 Processes by Memory Usage
print("Top 5 Processes by Memory Usage:")
for proc in sorted(psutil.process_iter(['pid', 'name', 'memory_info']), key=lambda p: p.info['memory_info'].rss, reverse=True)[:5]:
    print(f"{proc.info['pid']} - {proc.info['name']} - {proc.info['memory_info'].rss / (1024 ** 2):.2f} MB")

# 6. Optional: Additional Stats
print("Additional System Information:")
print(f"OS: {platform.system()} {platform.release()}")
print(f"Uptime: {psutil.boot_time()}")
print(f"Logged-in Users: {len(psutil.users())}")
=======

>>>>>>> 139350e7e308d70f5afa7dd25b5baffb5b347676
