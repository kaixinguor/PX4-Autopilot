
# 目录xtdrone
export XTDrone_HOME=/home/kaixinguor/project/uav/XTDrone
export PX4_HOME=/home/kaixinguor/project/uav/PX4-Autopilot

# 修改启动脚本文件
cp $XTDrone_HOME/sitl_config/init.d-posix/* $PX4_HOME/ROMFS/px4fmu_common/init.d-posix/
# 添加launch文件
cp -r $XTDrone_HOME/sitl_config/launch/* $PX4_HOME/launch/
# 添加世界文件
cp $XTDrone_HOME/sitl_config/worlds/* $PX4_HOME/Tools/sitl_gazebo/worlds/
# 修改部分插件
cp $XTDrone_HOME/sitl_config/gazebo_plugin/gimbal_controller/gazebo_gimbal_controller_plugin.cpp $PX4_HOME/Tools/sitl_gazebo/src
cp $XTDrone_HOME/sitl_config/gazebo_plugin/gimbal_controller/gazebo_gimbal_controller_plugin.hh $PX4_HOME/Tools/sitl_gazebo/include
cp $XTDrone_HOME/sitl_config/gazebo_plugin/wind_plugin/gazebo_ros_wind_plugin_xtdrone.cpp $PX4_HOME/Tools/sitl_gazebo/src
cp $XTDrone_HOME/sitl_config/gazebo_plugin/wind_plugin/gazebo_ros_wind_plugin_xtdrone.h $PX4_HOME/Tools/sitl_gazebo/include
# 修改CMakeLists.txt
cp $XTDrone_HOME/sitl_config/CMakeLists.txt $PX4_HOME/Tools/sitl_gazebo
# 修改部分模型文件
cp -r $XTDrone_HOME/sitl_config/models/* $PX4_HOME/Tools/sitl_gazebo/models/
