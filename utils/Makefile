all: libutils.a

clean:
	rm -f *~ *.o *.d libutils.a

CFLAGS += -DCONFIG_IPV6

LIB_OBJS= \
	base64.o \
	common.o \
	ip_addr.o \
	radiotap.o \
	trace.o \
	uuid.o \
	wpa_debug.o \
	wpabuf.o

# Pick correct OS wrapper implementation
LIB_OBJS += os_unix.o

# Pick correct event loop implementation
LIB_OBJS += eloop.o

libutils.a: $(LIB_OBJS)
	$(AR) crT $@ $?

-include $(OBJS:%.o=%.d)
