#!/bin/bash

TIMER=1

if [ $(whoami) != 'root' ];then
	echo 'Try: sudo !!'
	exit 1
fi

tar xvpf backup.tar.zst --zstd -C /
mkdir /{proc,lost+found,mnt,sys,run}
shutdown -r +${TIMER} "Rebooting in ${TIMER} minute to finalize system restore."
