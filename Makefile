W_NAME	= bully
W_ROOT	= `pwd`

CFLAGS	+= -I$(W_ROOT) -I$(W_ROOT)/utils/ -I$(W_ROOT)/tls/ -I$(W_ROOT)/wps/ -I$(W_ROOT)/crypto/ -I$(W_ROOT)/common/

LDFLAGS += -lpcap -lssl -lcrypto

HDRS	= $(W_NAME).h 80211.h frame.h iface.h bswap.h version.h
SRCS	= $(W_NAME).c 80211.c frame.c iface.c crc32.c timer.c utils.c

all: $(W_NAME)

$(W_NAME): $(HDRS) $(SRCS)
	make -C crypto && make -C utils && make -C tls
	$(CC) $(W_NAME).c $(CFLAGS) $(LDFLAGS) -o $(@)

clean:
	-rm -f $(W_NAME) $(W_NAME).o
	make -C crypto clean && make -C utils clean && make -C tls clean
