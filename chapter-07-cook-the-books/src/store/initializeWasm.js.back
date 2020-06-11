/**
 * Returns an array of compiled (not instantiated!) Wasm modules.
 * We need the main.wasm file we created, as well as the memory.wasm file
 * that allows us to use C functions like malloc() and free().
 */
const fetchAndCompileModules = () =>
  Promise.all(
    //['../assets/main.wasm', '../assets/memory.wasm'].map(fileName =>
    ['../assets/main.wasm'].map(fileName =>
      fetch(fileName)
        .then(response => {
          if (response.ok) return response.arrayBuffer();
          throw new Error(`Unable to fetch WebAssembly file: ${fileName}`);
        })
        .then(bytes => WebAssembly.compile(bytes))
    )
  );

/**
 * Returns an instance of the compiled "main.wasm" file.
 */
//const instantiateMain = (compiledMain, memoryInstance, wasmMemory) => {
const instantiateMain = (compiledMain,  wasmMemory) => {
  //const memoryMethods = memoryInstance.exports;
  return WebAssembly.instantiate(compiledMain, {
    env: {
      //memoryBase: 0,
      __memory_base:0,//add by hao
      //tableBase: 0,
      __table_base: 0,
      memory: wasmMemory,
      table: new WebAssembly.Table({ initial: 16, element: 'anyfunc' }),
      abort: console.log,
      _consoleLog: value => console.log(value),
      //_malloc: memoryMethods.malloc,
      //_free: memoryMethods.free
    }
  });
};

/**
 * Compiles and instantiates the "memory.wasm" and "main.wasm" files and
 * returns the `exports` property from main's `instance`.
 */
export default async function initializeWasm() {
  const wasmMemory = new WebAssembly.Memory({ initial: 1024 });
  //const [compiledMain, compiledMemory] = await fetchAndCompileModules();
  const [compiledMain ] = await fetchAndCompileModules();

 // const memoryInstance = await WebAssembly.instantiate(compiledMemory, {
 //   env: {
 //     memory: wasmMemory
 //   }
 // });

  const mainInstance = await instantiateMain(
    compiledMain,
//    memoryInstance,
    wasmMemory
  );

  return mainInstance.exports;
}
