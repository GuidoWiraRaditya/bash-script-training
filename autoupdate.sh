#!/bin/bash

echo "--====Package Auto Update====---"
echo ""
echo "Auto Update Staring...."
echo "........"
echo "..."

echo "Updating Local Version Library..."
apt update

echo "Upgrading Installed Packages..."
apt upgrade

echo "Upgrade process finished..."
