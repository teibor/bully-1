For English:

First,you should Set up cross-compile toolchain on your PC or Build up enviroment on your android device.

How to statically compile bully program

$ apt-get install libpcap-dev openssl

$ git clone https://github.com/Droid-MAX/bully.git

$ cd bully/crypto && make

$ cd ../utils && make

$ cd ../tls && make

$ cd .. && make

If compile sucessfully,you will find bully in your local directory.



中文说明

首先，你应该在你的电脑上安装好交叉编译工具链或在你的安卓设备上搭建好编译环境

如何静态编译出bully程序

$ apt-get install libpcap-dev openssl

$ git clone https://github.com/Droid-MAX/bully.git

$ cd bully/crypto && make

$ cd ../utils && make

$ cd ../tls && make

$ cd .. && make

如果你成功地把bully编译出来，你将会在当前目录下找到它
