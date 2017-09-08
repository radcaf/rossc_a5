#!/bin/bash
RUN=0
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -0.8, right: -1.0}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -0.8, right: -1.0}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -1.0, right: -1.0}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -1.0, right: -1.0}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -1.0, right: -1.0}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: -1.0, right: -1.0}'
rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 0.0, right: 0.5}'
while	[ $RUN -lt 8 ]; do
  rostopic pub -1 \cmd_drive kingfisher_msgs/Drive  '{left: 1.0, right: 1.0}'
  let RUN=RUN+1 
done
