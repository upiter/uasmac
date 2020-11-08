# UASM

## Contents

- [Intro](#intro)
- [Supported processor instructions](#supported-processor-instructions)
- [Calling Conventions](#calling-conventions)
- [Output formats](#output-formats)
- [Command line options](#command-line-options)

## Intro

UASM is intended to be a free Masm-compatible assembler.
It supports 16-, 32- and 64-bit code generation and instructions up to `AVX2` and `AVX512F`.

## Supported processor instructions

Instructions up to `AVX2` and `AVX512F` are supported including all new extensions for `VMX`, `MPX`, `AES`, `BND`, `F16C` etc.

## Calling Conventions

- Support for Microsoft [vectorcall](https://docs.microsoft.com/en-us/cpp/cpp/vectorcall) on x64.
- Support for Borland Register Calling Convention.
- Full support for SystemV Calling Convention.

## Output formats

|Format	|Option	|Comment	|
|:----	|----	|--------	|
|OMF	|`-omf`		|(default) object format, 16- and 32-bit supported	|
|BIN	|`-bin`		|plain binary format (boot sector, BIOS, DOS COM)	|
|COFF	|`-coff`	|MS Win32 object format	|
|WIN64	|`-win64`	|MS Win64 object format	|
|MZ	|`-mz`		|DOS native binary format (`.exe`)	|
|PE	|`-pe`		|Win32/Win64 PE binary format	|
|ELF32	|`-elf`		|Linux 32-bit object format	|
|ELF64	|`-elf64`	|Linux 64-bit object format	|
|mach-o	|`-macho64`	|64-bit Mach-O object file	|

## Command line options

```sh
uasm [options] asm-file [options] [asm-file] ... [@env_var]
```

Options:
```
-<0|1|..|10>[p]      Set CPU: 0=8086 (default), 1=80186, 2=80286, 3=80386,
                     4=80486, 5=Pentium, 6=PPro, 7=P2, 8=P3, 9=P4, 10=x86-64;
                     <p> allows privileged instructions
-c                   Assemble without linking (always set)
-C<p|u|x>            Set OPTION CASEMAP: p=NONE, u=ALL, x=NOTPUBLIC (default)
-archSSE             Set OPTION ARCH: SSE = Use SSE in generated code (default)
-archAVX             Set OPTION ARCH: AVX = Use AVX in generated code
-nomlib              Disable internal Macro Library
-D<name>[=text]      Define text macro
-e<number>           Set error limit number (default=50)
-EP                  Output preprocessed listing to stdout
-eq                  don't display error messages
-Fd[=<file_name>]    Write import definition file
-Fi<file_name>       Force <file_name> to be included
-Fs[=<file_name>]    Write symbolic debug info
-Fl[=<file_name>]    Write listing file
-Fo<file_name>       Set object file name
-Fw<file_name>       Set errors file name
-FPi                 80x87 instructions with emulation fixups
-FPi87               80x87 instructions (default)
-fpc                 Disallow floating-point instructions (.NO87)
-fp<n>               Set FPU, <n> is: 0=8087 (default), 2=80287, 3=80387
-G<c|d|r|z>          Use Pascal, C, Fastcall or Stdcall calling convention
-I<directory>        Add directory to list of include directories
-m<t|s|c|m|l|h|f>    Set memory model:
                     (Tiny, Small, Compact, Medium, Large, Huge, Flat)
-nc=<name>           Set class name of code segment
-n<d|m|t>=<name>     Set name of d)ata segment, m)odule or t)ext segment
-q, -nologo          Don't display version and copyright information
-less                Reduce console output information (be less verbose)
-Sa                  Maximize source listing
-safeseh             Assert all exception handlers are declared
-Sf                  Generate first pass listing
-Sg                  Display generated code in listing
-Sn                  Suppress symbol-table listing
-Sp[n]               Set segment alignment, n=<1|2|4|8|16|32 ...>
-Sx                  List false conditionals
-w                   Same as /W0 /WX
-W<number>           Set warning level number (default=2, max=4)
-WX                  Treat all warnings as errors
-X                   Ignore INCLUDE environment path
-zcm                 C names are decorated with '_' prefix (default)
-zcw                 No name decoration for C symbols
-Zd                  Add line number debug info (OMF & COFF only)
-Zf                  Make all symbols public
-zf<0|1|2>           Set FASTCALL type: 0=MS VC style (default),
                     1=OW register calling convention,
                     2=Borland register convention
-Zg                  Generated code is to exactly match Masm's one
-Zi[0|1|2|3]         Add symbolic debug info (OMF & COFF): 0=globals
                     1= +locals, 2= +types (default), 3= +constants
-zlc                 No OMF records about data in code
-zld                 No OMF records about far call optimization
-zl<f|p|s>           Suppress items in COFF symbol table: f=no .file entry,
                     p=no static procs, s=no auxiliary entries for sections
-Zm                  Masm v5.1 compatibility
-Zne                 Disable syntax extensions not supported by Masm
-Zp[n]               Set structure alignment, n=<1|2|4|8|16|32>
-Zs                  Perform syntax check only
-zt<0|1|2>           Set STDCALL symbol decoration: 0=No name decoration,
                     1=No '@size' suffix for functions, 2=Full (default)
-zv<0|1|2>           Set VECTORCALL symbol decoration: 0=No name decoration,
                     1=No '@size' suffix for functions, 2=Full (default)
-Zv8                 Enable Masm v8+ PROC visibility
-zze                 No name decoration for exported symbols
-zzs                 Store decorated name of start address (COFF only)
@env_var             Environment variable or file containing further commands
output formats:
-bin                 plain binary file
-coff                COFF object file
-elf                 32-bit ELF object file
-elf64               64-bit ELF object file
-mz                  DOS MZ binary file
-omf                 OMF object file (default)
-pe                  PE binary file, 32/64-bit
-win64               64-bit COFF object file
-macho64             64-bit Mach-O object file
-pie                 Generate Position Independant Executable (ELF64/MACHO64)
```
