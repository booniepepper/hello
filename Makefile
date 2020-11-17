# Hello world in a few languages!

all : c cobol factor forth python java racket haskell
.PHONY : all

run :
	./run
.PHONY : run

clean :
	rm -rf ./bin
	rm -rf ./jar
.PHONY : clean

# Some utility things

bin :
	mkdir -p ./bin
jar :
	mkdir -p ./jar

# Languages

c : bin
	@echo "=== [Compiling C] ==="
	gcc -o ./bin/hello-from-c ./hello.c

cobol : bin
	@echo "=== [Compiling COBOL] ==="
	cobc -x -o ./bin/hello-from-cobol ./hello.cbl

forth : bin
	@echo "=== [Compiling Forth] ==="
	gforthmi --application ./bin/hello-from-forth ./hello.fs

factor : bin
	@echo "=== [Compiling Factor] ==="
	factor -roots=. -e='USING: namespaces tools.deploy tools.deploy.config ; "." deploy-directory set "hello" deploy'
	mv ./hello/hello ./bin/hello-from-factor

python : bin
	@echo "=== [Compiling Python] ==="
	nuitka3 -o ./bin/hello-from-python ./hello.py
	@echo "=== [Cleaning up after Python] ==="
	rm -r ./hello.build

java : bin jar
	@echo "=== [Compiling Java] ==="
	javac ./hello.java
	jar cfe ./jar/greet.jar Greeting *.java *.class
	@echo "=== [Creating a wrapper script for Java] ==="
	cp ./java-helper.sh ./bin/hello-from-java
	chmod +x ./bin/hello-from-java
	@echo "=== [Cleaning up after Java] ==="
	rm ./Greeting.class

racket : bin
	@echo "=== [Compiling Racket] ==="
	raco exe -o ./bin/hello-from-racket ./hello.rkt

haskell : bin
	@echo "=== [Compiling Haskell] ==="
	ghc -o ./bin/hello-from-haskell ./hello.hs
	@echo "=== [Some Haskell cleanup] ==="
	rm ./hello.hi ./hello.o

