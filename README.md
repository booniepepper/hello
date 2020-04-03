# Hello

A small collection of hello world programs.

I wanted to demonstrate some different programming styles and syntaxes.

`make all` can compile all of these to Executable Linkable Files (ELFs, the unixy equivalent of an EXE file) except Java

The output is a number of apps in a `bin` directory that can be run in a terminal.

# Setup

Install toolchains for these 6 languages:

- C: `gcc`
- Forth: `gforth`
- Python: `python3`, [`nuitka`](https://www.nuitka.net/pages/download.html)
- Java: `jdk8` (or higher)
- Racket: `racket`
- Haskell: `ghc`

# Some toolchain notes:

For Python, Nuitka is used to get a more optimized runtime to better compete with the speeds of C, Forth, and Haskell.

In the real world, Python, Racket, and Forth (and similar languages) are generally used in their interpreted form

