#!/bin/bash
# add new VM
gcloud compute instances create node-svc \
    --image-family ubuntu-minimal-2004-lts \
    --image-project ubuntu-os-cloud \
    --boot-disk-size 10GB \
    --machine-type n1-standard-1

# add firewall rule
gcloud compute firewall-rules create allow-node-svc-tcp-3000 \
    --network default \
    --action allow \
    --direction ingress \
    --rules tcp:3000 \
    --source-ranges 0.0.0.0/0
