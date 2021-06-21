#!/bin/bash

if [ $(whoami) != 'root' ];then
	echo 'Try: sudo !!'
	exit 1
fi

tar cf /backup.tar.zst \
	--zstd \
	--exclude=/backup.tar.gz \
	--exclude=/dev \
	--exclude=/mnt \
	--exclude=/proc \
	--exclude=/sys \
	--exclude=/run \
	--exclude=/tmp \
	--exclude=/lost+found \
	/
