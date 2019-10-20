# Install Java on Ubuntu
Set up Java environment on Ubuntu

## How To
Download from Oracle site the .tar file form [Oracle site](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

Choose the path where you want untar the file. For example /home

```
# Clone this repository
git clone https://github.com/miccar/javasetup

# Go into the repository
cd javasetup

#allow execution permission
chmod +x setupjava.sh

#execute the script passing as argument the absolute path of java bin folder  
./setupjava.sh /home/jdk1.8.0_***/bin 
```
