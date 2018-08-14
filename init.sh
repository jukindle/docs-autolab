git submodule sync --recursive
git submodule update --init --recursive
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update;	apt-cache search docker-ce; sudo apt-get install docker-ce
make install-docker-ubuntu16

sudo sed -i '/-v $(gitdir_super):$(gitdir_super)/d' resources/makefiles/setup.Makefile
sudo sed -i '/run-book-native.sh/d' resources/makefiles/setup.Makefile

clear

echo "Please sign out and sign in now in order to update the system groups. Then, you should be ready to compile with 'make compile'!"
