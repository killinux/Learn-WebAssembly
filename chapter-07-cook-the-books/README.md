# Chapter 7: Creating an Application from Scratch

## Overview
The code within this folder represents the complete application, 'Cook the Books', built in Chapter 7.

## Notes
- Unless otherwise specified, all terminal commands should be run from within this folder.
- To remove existing built files, run the following command:
```
make clean
```

## Instructions
### Building the Application
Run the following command within this folder:
```
emcc lib/main.c -Os -s WASM=1 -s SIDE_MODULE=1 \
-s BINARYEN_ASYNC_COMPILATION=0 -o src/assets/main.wasm
```

Alternatively, you can run the following command:
```
make
```

### Running the Application
Run the following command to start the application:
```
npm start
```

add by hao:
```
npm install -D browser-sync@^2.24.4
npm install uikit
npm  install accounting-js@1.1.1
npm install lodash@4.17.10
npm install d3@5.5.0
npm install vue@2.5.16
npm install vue-numeric@2.3.0
```
vim src/store/initializeWasm.js
vim src/store/store.js
vim src/store/api.js

some problem about json ,
