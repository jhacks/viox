# viox64 Makefile v.0.1
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

