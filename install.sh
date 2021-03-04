#!/bin/bash

mkdir -p ~/catkin_ws/src/snu_assembly
cd ~/catkin_ws/src

git clone --recursive https://github.com/psh117/constrained_motion_planning -b v1.2.0
git clone --recursive https://github.com/psh117/assembly_dual_controllers -b v1.2.0
git clone --recursive https://github.com/psh117/assembly_dummy_controller
git clone --recursive https://github.com/psh117/assembly_env_description -b v1.2.0
git clone --recursive https://github.com/psh117/assembly_knowledge -b v1.2.0
git clone --recursive https://github.com/psh117/assembly_moveit_config -b v1.2.0
git clone --recursive https://github.com/psh117/assembly_msgs -b v1.2.0
git clone --recursive https://github.com/psh117/assembly_task_manager -b v1.2.0

cd ~/catkin_ws/

catkin build
