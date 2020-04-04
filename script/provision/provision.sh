#!/bin/bash

# add new VM
gcloud compute instances create raddit-instance-3 \
    --image-family ubuntu-1604-lts \
    --image-project ubuntu-os-cloud \
    --boot-disk-size 10GB \
    --machine-type n1-standard-1

# add firewall rule
gcloud compute firewall-rules create allow-raddit-tcp-9292 \
    --network default \
    --action allow \
    --direction ingress \
    --rules tcp:9292 \
    --source-ranges 0.0.0.0/0
