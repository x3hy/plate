CC := cc
PREFIX := /usr/bin
VER := \"$(shell cat .version)\"
CFLAGS := -DVERSION=$(VER) -g

all: clean plate

.version: README plate
	git describe --tags --always 2>/dev/null >$@
	sed -i '1s/.*/Plate-$(shell cat .version)/' $(firstword $^)

plate: plate.o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf plate plate_tmp plate.tar.gz *.o

install: plate json2csv
	cp -f plate $(PREFIX)
	cp -f json2csv $(PREFIX)/plate_json2csv
	chmod 755 $(PREFIX)/plate
	chmod 755 $(PREFIX)/plate_json2csv

uninstall:
	rm -f $(PREFIX)/plate $(PREFIX)/plate_json2csv
	
.PHONY: clean $(PROG_NAME) test .version
