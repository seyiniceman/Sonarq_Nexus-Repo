#!/bin/bash

# Log everything (VERY IMPORTANT)
exec > >(tee /var/log/user-data.log | logger -t user-data -s 2>/dev/console) 2>&1

# Fail fast
set -euxo pipefail

echo "=== STARTING SETUP ==="

export DEBIAN_FRONTEND=noninteractive

########################################
# BASE SETUP
########################################
apt-get update -y
apt-get install -y ca-certificates curl gnupg lsb-release software-properties-common

install -m 0755 -d /etc/apt/keyrings

########################################
# JAVA + BASIC TOOLS
########################################
apt-get install -y openjdk-21-jdk git maven
# Force the system to use Java 21
update-java-alternatives --set $(ls -d /usr/lib/jvm/java-1.21.0-openjdk-amd64 | head -n 1)
########################################
# JENKINS (2026 UPDATED KEY & FIX)
########################################
echo "=== Installing Jenkins ==="

# 1. Download the LATEST 2026 key (Jenkins changed this recently)
# The backslash '\' is critical to keep this as one command
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key | \
gpg --dearmor -o /etc/apt/keyrings/jenkins.gpg

# 2. Ensure the key is readable by the system
chmod a+r /etc/apt/keyrings/jenkins.gpg

# 3. Create the source list pointing to the new .gpg file
echo "deb [signed-by=/etc/apt/keyrings/jenkins.gpg] https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list
