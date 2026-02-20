CC             := cc
OS             := $(shell uname -s)
VERSION_MIN    := $(shell git rev-list --count --all)
CFLAGS         := -DPLATE_V=\"1.0.$(VERSION_MIN)\" 
CFLAGS_RELEASE := -O3
CFLAGS_DEBUG   := -g -fsanitize=address -fsanitize=undefined -O0 -Wall -Wextra

all: clean plate

# Debug
ifndef RELEASE
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
		if [  $$? -eq 0 ];then 
			@echo "--------------------"
			@echo "Built $@ sucessfully"
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
	./plate -t='<span><!--$$name_l--></span>' -i="src/static/test.html" --json-file="src/static/data.json"

.PHONY: plate run test
