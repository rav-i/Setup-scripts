# Script to show system information

#!/bin/bash
echo "Uptime"
uptime

echo "Memory Usage"
free -m

echo "Boot Time"
systemd-analyze
