CC = cc
CFLAGS := -O3 -g
OS := $(shell uname -s)

all: plate

# Build Plate
ifneq ($(filter $(OS),Linux Darwin),)
plate.o: plate.c
	$(CC) $(CFLAGS) -c $< -o $@

.ONESHELL:
plate: plate.o
	@if command -v "$(CC)" >/dev/null 2>&1; then
		$(CC) $(CFLAGS) $^ -o $@
		@if [  $$? -eq 0 ];then 
			@echo "Built $@ sucessfully"
			exit 0
		@else
			@echo "Something went wrong."
			exit 1
		@fi
	@else
		@echo "$(CC) not available"
		exit 1
	@fi

else
plate:
	@echo "Unsupported platform $(OS)"

endif

# Remove bins
clean:
	rm -f plate
	rm -f plate.o

run: plate
	@echo
	./plate

.PHONY: plate run
