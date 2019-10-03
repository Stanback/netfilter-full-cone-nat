obj-m = xt_FULLCONENAT.o
CFLAGS_xt_FULLCONENAT.o := ${CFLAGS}
KVERSION = $(shell uname -r)
PWD = $(shell pwd)
all:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
install:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) modules_install
clean:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
