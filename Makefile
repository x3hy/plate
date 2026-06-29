CC := cc
PREFIX := /usr/bin
VER := \"$(shell cat .version)\"
CFLAGS := -DVERSION=$(VER) -g -lyajl # -Os -ffunction-sections -fdata-sections -fno-ident -fno-asynchronous-unwind-tables -Wl,--gc-sections -s

all: clean plate

.version: README plate
	git describe --tags --always 2>/dev/null >$@
	sed -i '1s/.*/Plate-$(shell cat .version)/' $(firstword $^)

plate: plate.o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf plate *.o

install: plate
	cp -f plate $(PREFIX)
	chmod 755 $(PREFIX)/plate

uninstall:
	rm -f $(PREFIX)/plate
	
.PHONY: clean $(PROG_NAME) test .version
