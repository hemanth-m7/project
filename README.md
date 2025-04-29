# Server Stats Script
https://roadmap.sh/projects/server-stats

This script provides a comprehensive overview of server statistics, including CPU usage, memory usage, disk usage, network usage, top processes, system load averages, uptime, and login information. It is designed for Linux-based systems.

## Features

- **CPU Usage**: Displays the total CPU usage percentage.
- **Memory Usage**: Shows used, total memory, and percentage usage.
- **Disk Usage**: Lists disk usage statistics for mounted devices.
- **Network Usage**: Provides network usage statistics.
- **Top Processes**:
  - By memory usage.
  - By CPU usage.
- **System Load Average**: Displays load averages for the last 1, 5, and 15 minutes.
- **System Uptime**: Shows how long the system has been running.
- **Login Information**:
  - Last 10 logins.
  - Count of failed login attempts.

## Prerequisites

- **Linux-based OS**: The script is designed to run on Linux systems.
- **Required Tools**:
  - `top`
  - `free`
  - `df`
  - `ifstat`
  - `ps`
  - `awk`
  - `bc`
  - `uptime`
  - `last`
  - Access to `/var/log/auth.log` for failed login attempts.

## Usage

1. Clone or copy the script to your Linux server.
2. Make the script executable:
   ```bash
   chmod +x server-stats.sh
   ```
3. Run the script:
   ```bash
   ./server-stats.sh
   ```

## Output

The script outputs the following information:

1. **CPU Usage**: Total CPU usage percentage.
2. **Memory Usage**: Used and total memory with percentage usage.
3. **Disk Usage**: Disk usage statistics for mounted devices.
4. **Network Usage**: Network usage statistics.
5. **Top Processes**:
   - By memory usage.
   - By CPU usage.
6. **System Load Average**: Load averages for the last 1, 5, and 15 minutes.
7. **System Uptime**: System uptime information.
8. **Login Information**:
   - Last 10 logins.
   - Count of failed login attempts.

## Notes

- Ensure the required tools are installed and accessible in your system's PATH.
- The script assumes access to `/var/log/auth.log` for failed login attempts. Adjust the path if your system uses a different log file.

## License

This script is provided "as is" without warranty of any kind. Use it at your own risk.
