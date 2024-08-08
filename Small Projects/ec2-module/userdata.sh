#!/bin/bash
sudo mkfs -t ext4 /dev/xvdf
sudo mkdir /mnt/ebs_volume
sudo mount /dev/xvdf /mnt/ebs_volume
