# Install script for directory: /home/rain/ydlidar_ws/src/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rain/ydlidar_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rain/ydlidar_ws/build/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/catkin_generated/installspace/navigation_stage.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navigation_stage/cmake" TYPE FILE FILES
    "/home/rain/ydlidar_ws/build/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/catkin_generated/installspace/navigation_stageConfig.cmake"
    "/home/rain/ydlidar_ws/build/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/catkin_generated/installspace/navigation_stageConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navigation_stage" TYPE FILE FILES "/home/rain/ydlidar_ws/src/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navigation_stage" TYPE DIRECTORY FILES "/home/rain/ydlidar_ws/src/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navigation_stage" TYPE DIRECTORY FILES "/home/rain/ydlidar_ws/src/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/move_base_config")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navigation_stage" TYPE DIRECTORY FILES "/home/rain/ydlidar_ws/src/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/stage_config")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/navigation_stage" TYPE FILE FILES
    "/home/rain/ydlidar_ws/src/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/multi_robot.rviz"
    "/home/rain/ydlidar_ws/src/ROS-SLAM-Gmapping/navigation_tutorials/navigation_stage/single_robot.rviz"
    )
endif()

