#!/bin/bash
#every 2 hours
apt-get update && apt-get install sudo
sudo chmod 0777 /etc/cron.d
sudo cat > /etc/cron.d/cron-reboot << EOF
* */2 * * * root reboot
EOF
sudo chmod 0644 /etc/cron.d/cron-reboot
sudo chown root:root /etc/cron.d/cron-reboot
