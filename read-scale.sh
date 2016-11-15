#!/bin/sh
#~ gatttool -t random -b f0:c7:7f:2a:8d:a6 --char-write --handle 0x001f -n 0200
#~ gatttool -t random -b f0:c7:7f:2a:8d:a6 --char-read --handle 0x0021
#~ gatttool -t random -b f0:c7:7f:2a:8d:a6 --char-write --handle 0x001c -n 0200
#~ gatttool -t random -b f0:c7:7f:2a:8d:a6 --char-write --handle 0x0026 -n 0200
#~ gatttool -t random -b f0:c7:7f:2a:8d:a6 --char-write-req --handle 0x0023 -n 0000000000 --listen

gatttool -i hci0 -b f0:c7:7f:2a:8d:a6 --char-write-req --handle 0x0012 -u 0xfff0 -n fe010100aa2d0285
gatttool -b f0:c7:7f:2a:8d:a6 --char-write-req --handle=0x0015 --value=0100 --listen
#~ gatttool -i hci0 -b f0:c7:7f:2a:8d:a6 --char-read --handle 0x0015 --listen -u 0x2902 #-n 0x0001
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0001
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0002
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0003
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0004
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0005
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0006
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0007
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0008
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0009
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x000a
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x000b
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x000c
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x000d
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x000e
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x000f
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0010
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0011
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0012
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0013
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0014
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0015
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0016
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0017
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0018
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0019
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x001a
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x001b
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x001c
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x001d
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x001e
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x001f
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0020
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0021
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0022
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0023
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0024
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0025
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0026
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0027
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0028
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x0029
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x002a
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x002b
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x002c
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x002d
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x002e
#~ gatttool -i hci0 -b F0:C7:7F:2A:8D:A6  --char-read --handle 0x002f

