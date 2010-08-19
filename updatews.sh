# /bin/sh
WORKSPC='/mnt/ws'
BACKSPC='/media/hx'
#Proyect main and backup locations
VIOXDIR="$WORKSPC/viox64"
VIOXBAK="$BACKSPC/vioxbak"
#Proyects in workspace
#coreboot
COREDIR="$WORKSPC/coreboot"
CORECLC="svn co svn://coreboot.org/coreboot/trunk $COREDIR"
COREUPC="svn update"
CBFSDIR="$COREDIR/util/cbfstool"
#grub
GRUBDIR="$WORKSPC/grub"
GRUBCLC="bzr branch http://bzr.savannah.gnu.org/r/grub/trunk/grub $GRUBDIR"
GRUBUPC="bzr pull"
GRUBMODULES="normal ls cat help ext2 iso9660 reiserfs xfs fat part_msdos part_gpt ata serial memdisk multiboot linux minicmd configfile search tar  at_keyboard"
#seabios
SEABDIR="$WORKSPC/seabios"
SEABCLC="git clone git://git.linuxtogo.org/home/kevin/seabios.git $SEABDIR"
SEABUPC="git pull"
#syslinux
SYSLDIR="$WORKSPC/syslinux"
SYSLCLC="git clone git://git.kernel.org/pub/scm/boot/syslinux/syslinux.git $SYSLDIR"
SYSLUPC="git pull"
#xen-4.0-testing
XEN4DIR="$WORKSPC/xen-4.0-testing"
XEN4CLC="hg clone -r RELEASE-4.0.0 http://xenbits.xen.org/xen-4.0-testing.hg $XEN4DIR"
XEN4UPC="hg pull -u"
#xen-unstable
XENUDIR="$WORKSPC/xen-unstable"
XENUCLC="hg clone http://xenbits.xensource.com/xen-unstable.hg $XENUDIR"
XENUUPC="hg pull -u"
#linux-2.6-stable
LIN26SDIR="$WORKSPC/linux-2.6-stable"
LIN26SCLC="git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-2.6-stable.git $LIN26SDIR"
LIN26SUPC="git pull"
#linux-2.6-unstable
LIN26UDIR="$WORKSPC/linux-2.6"
LIN26UCLC="git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git $LIN26UDIR"
LIN26UUPC="git pull"
#linux-next
LINNDIR="$WORKSPC/linux-next"
LINNCLC="git clone git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git $LINNDIR"
LINNUPC="git pull"
#git
GITDIR="$WORKSPC/git"
GITCLC="git clone git://git.kernel.org/pub/scm/git/git.git $GITDIR"
GITUPC="git pull"
#xserver
XSRVDIR="$WORKSPC/xserver"
XSRVCLC="git clone git://anongit.freedesktop.org/xorg/xserver $XSRVDIR"
XSRVUPC="git pull"
#kvm
KVMDIR="$WORKSPC/kvm"
KVMCLC="git clone git://git.kernel.org/pub/scm/virt/kvm/kvm.git $KVMDIR"
KVMUPC="git pull"
#qemu-kvm
QEKVDIR="$WORKSPC/qemu-kvm"
QEKVCLC="git clone git://git.kernel.org/pub/scm/virt/kvm/qemu-kvm.git $QEKVDIR"
QEKVUPC="git pull"
#mesa
MESADIR="$WORKSPC/mesa"
MESACLC="git clone git://anongit.freedesktop.org/git/mesa/mesa $MESADIR"
MESAUPC="git pull"
#cryptodev-2.6
CRYPDIR="$WORKSPC/cryptodev-2.6"
CRYPCLC="git clone git://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git $CRYPDIR"
CRYPUPC="git pull"
#bochs
BOCHSDIR="$WORKSPC/bochs"
BOCHSCLC="git clone git://git.kernel.org/pub/scm/virt/bochs/bochs.git $BOCHSDIR"
BOCHSUPC="git pull"
#xhci
XHCIDIR="$WORKSPC/xhci"
XHCICLC="git clone git://git.kernel.org/pub/scm/linux/kernel/git/sarah/xhci.git $XHCIDIR"
XHCIUPC="git pull"
#udev
UDEVDIR="$WORKSPC/udev"
UDEVCLC="git clone git://git.kernel.org/pub/scm/linux/hotplug/udev.git $UDEVDIR"
UDEVUPC="git pull"
#gcc
GCCDIR="$WORKSPC/gcc"
GCCCLC="svn co svn://gcc.gnu.org/svn/gcc/trunk $GCCDIR"
GCCUPC="svn update"
#gnupg
GNUPGDIR="$WORKSPC/gnupg"
GNUPGCLC="svn co svn://cvs.gnupg.org/gnupg/branches/STABLE-BRANCH-2-0 $GNUPGDIR"
GNUPGUPC="svn update"
###########
### workspace
if  [ -d $WORKSPC ]
then
 echo 'ws found........use it'
else
 echo 'ws not found....create it'
 mkdir -p $WORKSPC
fi
### backup proj. files on removable dev.
if  [ -d $BACKSPC ]
then
 echo 'bs found........copy on it'
 cp -R $VIOXDIR $VIOXBAK
 cp $WORKSPC/updatews.sh $BACKSPC/updatews.sh
else
 echo 'bs not found....ignore  it'
fi
### Clone / Update proyects
########### "CORE" "GRUB" "SEAB" "SYSL" "XEN4" "XENU" "LIN26S" "LIN26U" "LINN" "GIT" "XSRV" "KVM" "QEKV" "MESA" "CRYP" "BOCHS" "XHCI" "UDEV" "GCC" "GNUPG"
for name in "CORE" "GRUB" "SEAB" "SYSL" "XEN4" "XENU" "LIN26S" "LIN26U" "LINN" "GIT" "XSRV" "KVM" "QEKV" "MESA" "CRYP" "BOCHS" "XHCI" "UDEV" "GCC" "GNUPG";
do
 DIR=$name"DIR"
 PDIR=${!DIR}
 DIR=$name"CLC"
 PCLC=${!DIR}
 DIR=$name"UPC"
 PUPC=${!DIR}
 if  [ -d $PDIR ]
 then
  echo "*** "$PDIR" >>> "$PUPC
  cd $PDIR
  $PUPC
 else
  echo "*** "$PDIR" >>> "$PCLC
  $PCLC
 fi
done
echo DONE
###########
