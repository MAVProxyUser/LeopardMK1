


# Install Oracle JDK

##
## First, you'll have to download JDK from Oracle. Unfortunately it cannot be done
## via command line, only by visiting Oracle site, accepting license etc.
## The page is https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
## The file you need is jdk-8u281-linux-x64.tar.gz
## Download it at put into the directory where you run this script from.
##

cat header1

export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_281/

#Clone  MIT Minicheetah software (alternate download, now a submodule)
#sudo git clone https://github.com/MAVProxyUser/Cheetah-Software.git
git submodule update
sudo chmod -R 777 Cheetah-Software
cd Cheetah-Software

#Eigen library
wget https://gitlab.com/libeigen/eigen/-/archive/3.3.7/eigen-3.3.7.zip
unzip eigen-3.3.7.zip
cd eigen-3.3.7
sleep 5
sudo mkdir build
cd build
sudo cmake ..
sudo make install
cd ../..
sleep 5

#lcm library
wget https://github.com/lcm-proj/lcm/releases/download/v1.4.0/lcm-1.4.0.zip
unzip lcm-1.4.0.zip
cd lcm-1.4.0
sleep 5
sudo mkdir build
cd build
sudo cmake ..
sudo make
sudo make install
cd ../..
sleep 5


#build 
cd scripts # for now, you must actually go into this folder
./make_types.sh # you may see an error like `rm: cannot remove...` but this is okay
cd ..
sudo mkdir build
sudo chmod -R 777 build

#fix issue4
sed -i '5 i set(Qt5Core_DIR /Qt5.12.8/5.12.8/gcc_64/lib/cmake/Qt5Core)' sim/CMakeLists.txt   
sed -i '6 i set(Qt5Widgets_DIR /Qt5.12.8/5.12.8/gcc_64/lib/cmake/Qt5Widgets)' sim/CMakeLists.txt
sed -i '7 i set(Qt5Gamepad_DIR /Qt5.12.8/5.12.8/gcc_64/lib/cmake/Qt5Gamepad)' sim/CMakeLists.txt

sleep 5


###finally
cd build
sudo cmake .. # No warnings anymore


sleep 5

sudo make ### # or sudo make -j4 for better spped but need  ramsss
sleep 10 

sudo ldconfig -v ##### for error while loading shared libraries: liblcm.so.1: cannot open shared object file: No such file or directory
sleep 5

######then run the simulator
sudo ./sim/sim

####IN OTHER WINDOW RUN 
###sudo ./user/MIT_Controller/mit_ctrl m s   ###https://www.programmersought.com/article/96114805353/

