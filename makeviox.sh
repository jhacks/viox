# /bin/sh
WORKSPC='/mnt/ws'
#
VIOXDIR="$WORKSPC/viox64"
COREDIR="$WORKSPC/coreboot"
GRUBDIR="$WORKSPC/grub"
SEABDIR="$WORKSPC/seabios"
SYSLDIR="$WORKSPC/syslinux"
XENUDIR="$WORKSPC/xen-unstable"
#
CBFSDIR="$COREDIR/util/cbfstool"
GRUBMODULES="normal ls cat help ext2 iso9660 reiserfs xfs fat part_msdos part_gpt ata serial memdisk multiboot linux minicmd configfile search tar at_keyboard"
#make seabios
cd $SEABDIR
make clean
make
cp $SEABDIR/out/bios.bin.elf $VIOXDIR/seabios.elf

#make coreboot
cd $COREDIR
make clean
make menuconfig
make
cp $COREDIR/build/coreboot.rom $VIOXDIR/viox64.rom

#make grub
cd $GRUBDIR
./autogen.sh
./configure --with-platform=coreboot
make
./grub-mkimage -d . $GRUBMODULES -o $GRUBDIR/grub.elf -O i386-coreboot --prefix='(ata0)/boot/grub'
cp $GRUBDIR/grub.elf $VIOXDIR/grub.elf

#make syslinux
cd $SYSLDIR
make clean
make
cp $SYSLDIR/core/ldlinux.elf $VIOXDIR/syslinux.elf

#make xen-unstable
#cd $XENUDIR
#make world
#make install
#make dist


#make viox64

#make ROM image viox64
cd $CBFSDIR
make
./cbfstool $VIOXDIR/viox64.rom add-payload $VIOXDIR/grub.elf img/grub
./cbfstool $VIOXDIR/viox64.rom add-payload $VIOXDIR/syslinux.elf img/syslinux
./cbfstool $VIOXDIR/viox64.rom print
echo -------------------------DONE

