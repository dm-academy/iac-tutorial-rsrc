#!/bin/bash
gcloud compute instances delete -q node-svc
gcloud compute firewall-rules delete -q allow-node-svc-tcp-3000
