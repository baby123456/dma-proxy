KERNEL_DIR=/root/NF_card_hw_sw_dev/software/arm-linux/phy_os

all:
	make -C $(KERNEL_DIR) M=`pwd` modules
clean:
	rm -rf *.o *.order Module.symvers *.ko *.mod* *.cmd*
obj-m += dma-proxy.o
