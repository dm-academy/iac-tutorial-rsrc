#!/bin/bash
gcloud compute instances delete -q raddit-instance-3
gcloud compute firewall-rules delete -q allow-raddit-tcp-9292 
