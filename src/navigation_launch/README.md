## navigation_launch
smart car navigation launch files on PC 

## How to use it
```shell
cd ~/catkin_ws/src
git clone https://github.com/Durant35/navigation_launch.git

cd ..
catkin_make

source devel/setup.sh

# you need to put the map built by Hector SLAM into src/amcl_launch/maps
roslaunch navigation_launch navigation_networking.launch map:=<build-map>.yaml
```
