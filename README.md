# moxa-gpio-pca953x-driver

## PCA953x 16-bit I/O expander
the PCA953x 16-bit I/O expander driver based on
https://elixir.bootlin.com/linux/v4.9.168/source/drivers/gpio/gpio-pca953x.c

### Compile & install the driver

#### Install build-essential packages
```
sudo apt-get install build-essential linux-headers-4.9.0-9-amd64=4.9.168-1+deb9u4
```

#### Compile the driver
```
make
```

#### Compile and install the driver
```
make install
```

#### Load the watchdog driver
```
modprobe gpio-pca953x
```
