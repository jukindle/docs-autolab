BASE:=book
BOOKNAME:=`ls -1 $(BASE)`
SRC:=book/$(BOOKNAME)
IMAGE:=andreacensi/duckuments:devel

all:
	cat README.md
	
compile:
	make clean; make compile-docker

include resources/makefiles/setup.Makefile
