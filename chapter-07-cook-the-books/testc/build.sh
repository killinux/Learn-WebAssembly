#!/bin/sh
#emcc main.c -O3 -s WASM=1 -s USE_SDL=2 -o main.html
#emcc main.c -Os -s WASM=1 -s SIDE_MODULE=1 -s "EXPORTED_FUNCTIONS=['_thistest']" -s BINARYEN_ASYNC_COMPILATION=0 -o thismain.wasm
#emcc main.c -Os -s WASM=1 -s SIDE_MODULE=1 -s "EXPORTED_FUNCTIONS=['_thistest','_testnode','_free']" -s BINARYEN_ASYNC_COMPILATION=0 -o thismain.wasm
emcc test.c -Os -s WASM=1 -s SIDE_MODULE=1 -s "EXPORTED_FUNCTIONS=['_thistest','_testnode','_testadd']" -s BINARYEN_ASYNC_COMPILATION=0 -o thismain.wasm
emcc add.c -Os -s WASM=1 -s SIDE_MODULE=1 -s "EXPORTED_FUNCTIONS=['_add','_addtest']" -s BINARYEN_ASYNC_COMPILATION=0 -o thisadd.wasm

