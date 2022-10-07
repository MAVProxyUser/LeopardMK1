
MIT.Minicheetah
# LeopardMK1

A simple script to install all the dependancies an then run the soft at the end.

![Capture d'écran 2021-03-20 18:04:14](https://user-images.githubusercontent.com/55119049/111878045-bdfd4280-89a6-11eb-96f7-cec409605927.png)

# INSTALLATION GUIDE
------------------

# Download Oracle JDK
---------------------
## First, you'll have to download JDK from Oracle. Unfortunately it cannot be done
## via command line, only by visiting Oracle site, accepting license etc.
## The page is https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
## The file you need is jdk-8u281-linux-x64.tar.gz
## Download it at put into the directory where you run the script install.sh.


PROCESS
--------
## IF Cheetah-Software folder is missing
git submodule update --init --recursive


## Open terminal in folder
## Type :

chmod +x prep.sh
chmod +x install.sh

sudo ./prep.sh
Insatall QT, and set path accordingly. 
export PATH=$PATH:/home/usernamehere/Qt5.12.8/bin/
sudo ./install.sh

## Wait wait wait ... (1 hour for me with make (no -j4)

## Follow QT WIZARD installation process

## Waiting again...

## The simulator run if all good

## Open another terminal and type :

sudo ./user/MIT_Controller/mit_ctrl m s    

## https://www.programmersought.com/article/96114805353/ 
## 
