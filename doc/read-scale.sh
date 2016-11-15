#!/bin/sh
gatttool -i hci0 -b f0:c7:7f:2a:8d:a6 --char-write-req --handle 0x0012 -n fe010100aa2d0285
gatttool -b f0:c7:7f:2a:8d:a6 --char-write-req --handle=0x0015 --value=0100 --listen
