CC             := cc
OS             := $(shell uname -s)
VERSION_MEAN   := $(shell git rev-list --count --all)
COUNTER_FILE   := .version
VERSION_MIN    := $(shell cat .version)
VERSION        := 1.$(VERSION_MEAN).$(VERSION_MIN)
CFLAGS         := -DPLATE_VERSION=\"$(VERSION)\"
CFLAGS_RELEASE := -O3 -g
CFLAGS_DEBUG   := -g -fsanitize=address -fsanitize=undefined -O0 -Wall -Wextra
PREFIX         := /usr

all: clean plate

# Debug
ifndef RELEASE
CFLAGS := $(CFLAGS_BASE) $(CFLAGS_DEBUG)
else
CFLAGS := $(CFLAGS_BASE) $(CFLAGS_RELEASE)
endif

update-version: $(COUNTER_FILE)
	@current=$$(cat $(COUNTER_FILE)); \
	new=$$((current + 1)); \
	echo "$$new" > $(COUNTER_FILE); \

# Build Plate
ifneq ($(filter $(OS),Linux Darwin),)
plate.o: plate.c
	$(CC) $(CFLAGS) -c $< -o $@

.ONESHELL:
plate: plate.o
	if command -v "$(CC)" >/dev/null 2>&1; then
		# Debug options
		$(CC) $(CFLAGS) $^ -o $@
		if [  $$? -eq 0 ];then 
			@echo "--------------------"
			@echo "Built $@ $(VERSION) sucessfully"
			make update-version
			exit 0
		else
			@echo "Something went wrong."
			exit 1
		fi
	else
		@echo "$(CC) not available"
		exit 1
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
