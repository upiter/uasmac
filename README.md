# UASM - Macro Assembler

UASM is a free MASM-compatible assembler based on [JWasm](https://www.japheth.de/JWasm.html).

## Notes

- This repo contains [releases](https://github.com/upiter/uasmac/releases) for macOS only.
- Find precompiled UASM binaries for other platforms (Windows, Linux) at [official UASM download page](http://www.terraspace.co.uk/uasm.html).
- Official repo: [Terraspace/UASM](https://github.com/Terraspace/UASM)

## Installation

### Install with Homebrew (recommended)

1. Install [Homebrew](https://brew.sh):

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

2. Install UASM via Homebrew:

```sh
brew tap upiter/uasm
brew install uasm
```

### Manual installation

1. Download archive with UASM from [Releases](https://github.com/upiter/uasmac/releases).
2. Extract `uasm` binary.
3. Make sure that `uasm` binary is executable:
```sh
chmod +x uasm
```

4. Link `uasm` file to `/usr/local/bin/`:
```sh
ln -s -f $PWD/uasm /usr/local/bin/
```


## Output formats

Native support for output formats:
- Intel OMF
- MS COFF (32/64-bit)
- ELF (32/64-bit)
- Binary
- Windows PE (32/64-bit)
- DOS MZ

## Supported processor instructions

Instructions up to `AVX2` and `AVX512F` are supported including all new extensions for `VMX`, `MPX`, `AES`, `BND`, `F16C` etc.

## Calling Conventions

- Support for Microsoft [vectorcall](https://docs.microsoft.com/en-us/cpp/cpp/vectorcall) on x64.
- Support for Borland Register Calling Convention.
- Full support for SystemV Calling Convention.

## Macros

- Integrated Macro Library with object-oriented programming (OOP) support.
- Numerous new HLL features (as described in the extended manual).

## Source

UASM is written in C. The source is portable and has successfully been tested with Open Watcom, MS VC, GCC and more.

## Include files

As far as programming for MS Windows is concerned, UASM can be used with both:
- [WinInc](http://www.terraspace.co.uk/uasm.html#p7) (32/64-bit)
- [MASM32](http://www.masm32.com) (32-bit)

C header files can be converted to include files for UASM with [h2incX](http://www.terraspace.co.uk/uasm.html#p6).

## Authors

- Andreas Grech ([Japheth](https://www.japheth.de/contact.html))
- Branislav Habus
- [John Hankinson](https://github.com/Terraspace/UASM/commits?author=john-terraspace)

## Samples

There's a bunch of source samples available - they are supplied with the precompiled binary packages.

## License

UASM's source code is released under the Sybase Open Watcom Public License, which allows free commercial and non-commercial use.

## Retrospective

- [JWasm](https://github.com/Baron-von-Riedesel/JWasm) started as a fork of Open Watcom's Wasm in March 2008.
- Today, the part of Wasm source lines still contained in JWasm is approximately 15%.
- UASM is a continued evolution of JWasm.
