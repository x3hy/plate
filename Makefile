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

plate_md: md.o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf plate *.o plate_md

install: plate plate_md
	cp -f plate $(PREFIX)
	cp -f plate_md $(PREFIX)
	chmod 755 $(PREFIX)/plate
	chmod 755 $(PREFIX)/plate_md

uninstall:
	rm -f $(PREFIX)/plate
	rm -f $(PREFIX)/plate_md
	
.PHONY: clean $(PROG_NAME) test .version
