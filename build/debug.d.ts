declare namespace __AdaptedExports {
  /** Exported memory */
  export const memory: WebAssembly.Memory;
  /**
   * assembly/index/readMemory
   * @param offset `u32`
   * @returns `u16`
   */
  export function readMemory(offset: number): number;
  /**
   * assembly/index/setDebugMode
   * @param enable `bool`
   */
  export function setDebugMode(enable: boolean): void;
  /**
   * assembly/index/setRegisterValue
   * @param regIndex `u8`
   * @param value `u16`
   */
  export function setRegisterValue(regIndex: number, value: number): void;
  /**
   * assembly/index/getCurrentPc
   * @returns `u16`
   */
  export function getCurrentPc(): number;
  /**
   * assembly/index/putUserInput
   * @param inputString `~lib/array/Array<u8>`
   */
  export function putUserInput(inputString: Array<number>): void;
  /**
   * assembly/index/run
   * @returns `u8`
   */
  export function run(): number;
}
/** Instantiates the compiled WebAssembly module with the given imports. */
export declare function instantiate(module: WebAssembly.Module, imports: {
  env: unknown,
}): Promise<typeof __AdaptedExports>;
