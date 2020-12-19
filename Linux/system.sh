#!/bin/bash

free >> ~/backups/freemem/free_mem.txt
df >> ~/backups/diskuse/disk_usage.txt
lsof >> ~/backups/openlist/open_list.txt
ls -al >> ~/backups/freedisk/free_disk.txt
