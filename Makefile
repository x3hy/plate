CC := cc
PROG_NAME := plate
VER := \"$(shell git describe --tags --always 2>/dev/null)\"
CFLAGS := -DVERSION=$(VER)

all: $(PROG_NAME)

$(PROG_NAME): $(PROG_NAME).o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# generate targz
tar: $(PROG_NAME)
	-make clean
	mkdir $(PROG_NAME)_tmp
	-cp -rT . $(PROG_NAME)_tmp
	-rm -rf $(PROG_NAME)_tmp/.git
	tar -czvf $(PROG_NAME).tar.gz $(PROG_NAME)_tmp
	rm -rf $(PROG_NAME)_tmp

clean:
	rm -rf plate plate_tmp plate.tar.gz *.o

test: $(PROG_NAME) test-file.csv
	./$(PROG_NAME) -I=$(lastword $^)


.PHONY: clean $(PROG_NAME) test
