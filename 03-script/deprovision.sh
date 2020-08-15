#!/bin/bash
gcloud compute instances delete -q node-instance
gcloud compute firewall-rules delete -q allow-node-tcp-3000
