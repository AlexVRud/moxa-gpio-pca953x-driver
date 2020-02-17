TARGET := gpio-pca953x
KRELEASE ?= $(shell uname -r)
KBUILD ?= /lib/modules/$(KRELEASE)/build
obj-m += gpio-pca953x.o

modules:
	@echo "Making modules $(TARGET) ..."
	$(MAKE) -C $(KBUILD) M=$(PWD) modules

install: modules
	/usr/bin/install -m 644 -D $(TARGET).ko /lib/modules/$(KRELEASE)/kernel/drivers/gpio/$(TARGET).ko
	/usr/bin/install -m 644 -D $(TARGET).conf /usr/lib/modules-load.d/$(TARGET).conf

clean:
	$(MAKE) -C $(KBUILD) M=$(PWD) clean
