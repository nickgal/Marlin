#!/usr/bin/env bash

cp config/mm2/*.h Marlin/
platformio run -e rambo

