CC := cc
CFLAGS :=
PROG_NAME := plate

all: $(PROG_NAME)

$(PROG_NAME): $(PROG_NAME).c
	$(CC) $(CFLAGS) -o $@ $^

# generate targz
tar: $(PROG_NAME)
	-make clean
	mkdir $(PROG_NAME)_tmp
	-cp -rT . $(PROG_NAME)_tmp
	-rm -rf $(PROG_NAME)_tmp/.git
	tar -czvf $(PROG_NAME).tar.gz $(PROG_NAME)_tmp
	rm -rf $(PROG_NAME)_tmp

clean:
	-rm plate
	-rm plate_tmp
	-rm plate.tar.gz

.PHONY: clean $(PROG_NAME)
