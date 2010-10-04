##Makefile
##VIOX64
##Virtual Bios Hypervisor 4 AMD64 Fam10+ 2 free & happy GPL3 hacking.
##Author: jhacks hack hersteller jhackher@gmail.com
##This program is released under the GNU GPL license v3 or lather, WHITHOUT ANY WARRANTY.
##A copy of the license should be found in LICENSE.txt and/or COPYING.txt file.
##In any case latest version is in http://www.gnu.org/licenses/gpl.html
##
# viox64/Makefile v.0.1

gdksrc = ./src/gdk
hcplsrc = ./src/hcpl
hlibsrc = ./src/hlib
vxsrc = ./src/vx
#
include $(gdksrc)/gdk.mk
include $(hcplsrc)/hcpl.mk
include $(hlibsrc)/hlib.mk
include $(vxsrc)/vx.mk
#

