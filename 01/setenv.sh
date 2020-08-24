#!/bin/bash

export NODE_IP_01=$(gcloud --format="value(networkInterfaces[0].accessConfigs[0].natIP)" compute instances describe node-svc-01)
export NODE_IP_02=$(gcloud --format="value(networkInterfaces[0].accessConfigs[0].natIP)" compute instances describe node-svc-02)

