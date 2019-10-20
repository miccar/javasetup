#!/bin/bash
if [ $EUID -ne 0 ]
  then echo "Please run as root... sudo ./setupjava.sh"
  exit
fi

PATH=""
if [ -z "$1" ]
  then
    echo "No argument supplied, run with path to java bin folder jdk***/bin"
    exit 1
fi
if [[ $1 == */ ]];
then   
	PATH=$1
else
	PATH=$1/
fi
echo "java path is ${PATH}"

/usr/bin/update-alternatives --install /usr/bin/java java ${PATH}"/java" 1
/usr/bin/update-alternatives --install /usr/bin/javac javac ${PATH}"/javac" 1
/usr/bin/update-alternatives --install /usr/bin/javaws javaws ${PATH}"/javaws" 1
/usr/bin/update-alternatives --config java
