BASE:=book
BOOKNAME:=`ls -1 $(BASE)`
SRC:=book/$(BOOKNAME)
IMAGE:=andreacensi/duckuments:devel

all:
	cat README.md

initialize:
	git submodule sync --recursive
	git submodule update --init --recursive
	sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
	sudo apt-get update
	apt-cache search docker-ce
	
	sudo apt-get install docker-ce
	make install-docker-ubuntu16
	
include resources/makefiles/setup.Makefile
