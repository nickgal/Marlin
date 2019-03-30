
CONFIG=mm2
PIO_ENV=rambo

all: build upload

copy_config:
	cp config/$(CONFIG)/*.h Marlin/

clean: copy_config
	platformio run --target clean -e $(PIO_ENV)

build: copy_config
	platformio run -e $(PIO_ENV)

upload: copy_config
	platformio run --target upload -e $(PIO_ENV)

.PHONY: copy_config clean build upload all
