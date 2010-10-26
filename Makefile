##Makefile
##VIOX64
##Virtual Bios Hypervisor 4 AMD64 Fam10+ (&ia64) 2 free & happy GPL3 hacking.
##Author: jhacks hack hersteller jhackher@gmail.com
##This program is released under the GNU GPL license v3 or later version, WHITHOUT ANY WARRANTY.
##A copy of the license should be found in LICENSE.txt and/or COPYING.txt file.
##In any case latest version is in http://www.gnu.org/licenses/gpl.html
##
# viox64/Makefile v.0.1
#
gdksrc = ./src/gdk
hcplsrc = ./src/hcpl
hlibsrc = ./src/hlib
vxsrc = ./src/vx
#
include $(gdksrc)/gdk.make
include $(hcplsrc)/hcpl.make
include $(hlibsrc)/hlib.make
include $(vxsrc)/vx.make
#

