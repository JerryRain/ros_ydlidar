# CMake generated Testfile for 
# Source directory: /home/rain/ydlidar_ws/src/csm/sm
# Build directory: /home/rain/ydlidar_ws/build/csm/sm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_math_utils_sanity "test_math_utils_sanity")
subdirs(lib/options)
subdirs(lib/json-c)
subdirs(lib/egsl)
subdirs(lib/gpc)
subdirs(csm)
subdirs(pkg-config)
