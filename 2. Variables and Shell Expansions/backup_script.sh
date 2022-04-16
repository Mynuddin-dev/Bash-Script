#!/bin/bash

# Author: Ziyad Yehia
# Created: 16.04.2022
# Last Modified: 16.04.2022

# Description:
# Creates a backup in the current directory of
# all files in the specific directory directory

echo "Hello there, ${USER^}"
echo "I will now back up your this directory, /home/$USER/bash_course"


# currentdir=$(pwd) 
currentdir="/home/$USER/bash_course"

echo "You are running this script from $currentdir"
echo "I will create save the backup file in $currentdir"

tar -cf "$currentdir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" /home/$USER/bash_course 2>/dev/null

echo "Backup completed successfully"

: '

#!/bin/bash
# Easily explained

# What to backup. 
backup_files="/home/$USER/bash_course"

# Where to backup to.
dest="/home/$USER/bash_course"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest


$backup_files: a variable listing which directories you would like to backup. The list should be customized to fit your needs.

$day: a variable holding the day of the week (Monday, Tuesday, Wednesday, etc). This is used to create an archive file for each day of the week, giving a backup history of seven days. There are other ways to accomplish this including using the date utility.

$hostname: variable containing the short hostname of the system. Using the hostname in the archive filename gives you the option of placing daily archive files from multiple systems in the same directory.

$archive_file: the full archive filename.

$dest: destination of the archive file. The directory needs to be created and in this case mounted before executing the backup script. See ??? for details of using NFS.

status messages: optional messages printed to the console using the echo utility.

tar czf $dest/$archive_file $backup_files: the tar command used to create the archive file.

c: creates an archive.

z: filter the archive through the gzip utility compressing the archive.

f: output to an archive file. Otherwise the tar output will be sent to STDOUT.

ls -lh $dest: optional statement prints a -l long listing in -h human readable format of the destination directory. This is useful for a quick file size check of the archive file. This check should not replace testing the archive file.
'

exit 0
