#!/bin/sh
emcc -c sdl_1_2_sample.c -o sdl_1_2_sample.o
emcc sdl_1_2_sample.o -o sdl_1_2_sample.html
