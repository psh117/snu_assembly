# Assembly robot project meta-package


## Prepare for simulation
* Install ROS (http://wiki.ros.org/ROS/Installation) \
  The codes are tested on Ubuntu 18.04 and ROS Melodic environment.
* Download source codes inside your catkin workspace
  ```sh
  cd ~/catkin_ws/src
  git clone https://github.com/psh117/snu_assembly
  cd snu_assembly
  ./install.sh
  ```
* CoppeliaSim (https://www.coppeliarobotics.com/coppeliaSim) 
  1. Download and unzip the files.
  2. Modify `remoteApiConnections.txt` in the coppeliaSim directory to use remoteApi with shared memory.
  ```
  portIndex1_port             = -3
  portIndex1_debug            = false
  portIndex1_syncSimTrigger   = true
  ```
  3. Copy `libsimExtROSInterface.so` from `assembly_msgs/bin/` to the coppeliaSim directory to use ROS Interface.

* franka_ros **You must download this forked version** (https://github.com/psh117/franka_ros) 
* catkin build (catkin_make)
## How to run simulation
1. roscore
```sh
roscore
```

2. CoppeliaSim \
Run coppeliasim \
Open `assembly_env_description/vrep/assembly_env.ttt`


3. Launch dummy controller.
```sh
roslaunch assembly_dummy_controller controller.launch 
```

4. Launch moveit
```sh
roslaunch assembly_moveit_config real.launch 
```

5. Run a task.
```sh
rosrun assembly_task_manager joint_move_sm.py 
```
