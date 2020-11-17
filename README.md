# Hello

A collection of hello world programs.

I wanted to very briefly demonstrate some different programming styles and syntaxes in a single place. Obviously I'm missing entire paradigms like Logic programming, but... it's a start!

- `make all` can compile all of these to Executable Linkable Files (ELFs, the unixy equivalent of an EXE file) except Java which uses a helper shell script.
  - The output is a number of apps in a `bin` directory that can be run in a terminal.

- `run` can run all the built executables.
  - `run [name]` If present, the first argument of `run` is passed to the executables as a name.
  - `run timed [name]` If the first argument is "timed" then the script times each executable and also can take an optional second argument for name.

- `make clean` can remove the executables and other artifacts like `jar` files for Java.

# Setup

Install toolchains for these 6 languages:

- C: `gcc`
- COBOL: `gnucobol`
- Factor: `factor`
- Forth: `gforth`
- Python: `python3`, [`nuitka`](https://www.nuitka.net/pages/download.html)
- Java: `jdk8` (or higher)
- Racket: `racket`
- Haskell: `ghc`

# Some toolchain notes:

For Python, Nuitka is used to get a more optimized runtime to better compete with the speeds of C, Forth, and Haskell.

In the real world, Python, Racket, Forth, and similar languages are most often used in their interpreted form.

