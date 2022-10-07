sudo apt update
sudo apt install default-jre -y
sudo apt install default-jdk -y

sudo tar -zxvf jdk-8u281-linux-x64.tar.gz -C /usr/lib/jvm/
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8.0_281/bin/java 3
sudo update-alternatives --set java /usr/lib/jvm/jdk1.8.0_281/bin/java
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.8.0_281/bin/javac 3
sudo update-alternatives --set javac /usr/lib/jvm/jdk1.8.0_281/bin/javac
sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk1.8.0_281/bin/jar 3
sudo update-alternatives --set jar /usr/lib/jvm/jdk1.8.0_281/bin/jar

#Install dependancies

sudo apt install freeglut3-dev -y
sudo apt install golang -y
sudo apt install doxygen -y
sudo apt install libglib2.0-dev -y
sudo apt install python-all-dev -y
sudo apt install liblua5.1-0-dev -y
sudo apt install build-essential -y
sudo apt install gcc -y
sudo apt install coinor-libipopt-dev -y
sudo apt install gfortran -y
sudo apt install liblapack-dev -y
sudo apt install libblas-dev -y
sudo apt install mesa-common-dev -y
sudo apt install git -y
sudo apt install cmake -y
sudo apt install qtbase5-dev -y

######QTCREATOR

wget http://mirrors.ukfast.co.uk/sites/qt.io/archive/qt/5.12/5.12.8/qt-opensource-linux-x64-5.12.8.run


chmod +x qt-opensource-linux-x64-5.12.8.run
./qt-opensource-linux-x64-5.12.8.run
