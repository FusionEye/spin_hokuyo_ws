#include<ros/ros.h>
#include<pcl/point_cloud.h>
#include<pcl_conversions/pcl_conversions.h>
#include<sensor_msgs/PointCloud2.h>
#include<pcl/io/pcd_io.h>
 
void cloudCB(const sensor_msgs::PointCloud2 &input)
{
  pcl::PointCloud<pcl::PointXYZ> cloud;
  pcl::fromROSMsg(input, cloud);//从ROS类型消息转为PCL类型消息
  pcl::io::savePCDFileASCII ("/home/shuning/catkin_ws/src/imgpcl/data/write_pcd_test.pcd", cloud);//保存pcd
}
main (int argc, char **argv)
{
  ros::init (argc, argv, "pcl_write");
  ros::NodeHandle nh;
  ros::Subscriber bat_sub = nh.subscribe("pcl_output", 10, cloudCB);//接收点云
  ros::spin();
  return 0;
}

