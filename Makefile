# SPDX-License-Identifier: GPL-2.0-only
#
#  Makefile for the TCAN4550 controller driver.
#

obj-m += m_can.o
obj-m += tcan4x5x.o 

tcan4x5x-objs :=
tcan4x5x-objs += tcan4x5x-core.o
tcan4x5x-objs += tcan4x5x-regmap.o

KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR)  M=$(shell pwd) modules

clean:
	make -C $(KDIR)  M=$(shell pwd) clean

