CC             := cc
OS             := $(shell uname -s)
V_MAJ          := 1
V_MEAN         := 3
V_MIN          := $(shell git rev-list --count --all)
COUNTER_FILE   := .version
VERSION        := $(V_MAJ).$(V_MEAN).$(V_MIN)
CFLAGS         := -DPLATE_VERSION=\"$(VERSION)\"
CFLAGS_RELEASE := -O3 -g
CFLAGS_DEBUG   := -g -fsanitize=address -fsanitize=undefined -O0 -Wall -Wextra
PREFIX         := /usr

all: clean plate

# Debug
ifdef DEBUG
CFLAGS := $(CFLAGS_BASE) $(CFLAGS_DEBUG)
else
CFLAGS := $(CFLAGS_BASE) $(CFLAGS_RELEASE)
endif

# Build Plate
ifneq ($(filter $(OS),Linux Darwin),)
plate.o: plate.c
	$(CC) $(CFLAGS) -c $< -o $@

.ONESHELL:
plate: plate.o
	if command -v "$(CC)" >/dev/null 2>&1; then
		# Debug options
		$(CC) $(CFLAGS) $^ -o $@
		@echo "Built $@ $(VERSION) sucessfully"
	else
		@echo "$(CC) not available"
	fi
else
plate:
	echo "Unsupported platform $(OS)"
endif

# Remove bins
clean:
	rm -f plate
	rm -f plate.o

# Basic test
test: plate
	./plate -t='<span>Hello: <!--$$name_l--> <!--$$name_s--></span>' -i="src/static/test.html" --json-file="src/static/data.json" -p="data"

update: plate
	if command -v plate >/dev/null 2>&1; then
		mv plate $(shell which plate)
	fi	

install: plate
	mv plate $(PREFIX)/bin/plate

.PHONY: plate run test
