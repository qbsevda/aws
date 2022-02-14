#!/bin/bash

# What to backup. 
backup_files1="/etc"
backup_files2="/boot"
backup_files3="/usr"
backup_files4="/home/ec2-user/data"

# Where to backup to.
dest="/mnt/backup"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files1 to $dest/$archive_file"
echo "Backing up $backup_files2 to $dest/$archive_file"
echo "Backing up $backup_files3 to $dest/$archive_file"
echo "Backing up $backup_files4 to $dest/$archive_file"
date
echo

# Backup the files using tar.
sudo tar czf $dest/$archive_file $backup_files1 $backup_files2 $backup_files3 $backup_files4

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest