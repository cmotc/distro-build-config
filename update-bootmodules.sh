#! /bin/sh
rm ./local/live-build/share/bootloaders/syslinux/*.c32
ln -s /usr/lib/syslinux/modules/bios/hdt.c32 ./local/live-build/share/bootloaders/syslinux/hdt.c32
ln -s /usr/lib/syslinux/modules/bios/ldlinux.c32 ./local/live-build/share/bootloaders/syslinux/ldlinux.c32
ln -s /usr/lib/syslinux/modules/bios/libcom32.c32 ./local/live-build/share/bootloaders/syslinux/libcom32.c32
ln -s /usr/lib/syslinux/modules/bios/libutil.c32 ./local/live-build/share/bootloaders/syslinux/libutil.c32
ln -s /usr/lib/syslinux/modules/bios/vesamenu.c32 ./local/live-build/share/bootloaders/syslinux/vesamenu.c32