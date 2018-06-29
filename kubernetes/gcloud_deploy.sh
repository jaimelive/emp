#!/bin/bash

# Delete Cluster
#gcloud container clusters delete emp-cluster

# Config Project
gcloud config set project calcium-ember-185414
gcloud config set compute/region europe-west1
gcloud config set compute/zone europe-west1-b

# Create Pluster
gcloud container clusters create emp-cluster --num-nodes=3 --machine-type=n1-standard-2

# Get Cluster Configs
gcloud container clusters get-credentials emp-cluster


# Install Helm
#kubectl create clusterrolebinding add-on-cluster-admin \
  #--clusterrole=cluster-admin \
  #--serviceaccount=kube-system:default

#helm init --service-account default

# Install Kafka
# helm install --name my-kafka --set replicas=1 --set zookeeper.servers=1 incubator/kafka



#gcloud beta compute disks create --zone europe-west1-b --size 10GB gce-disk-1





# Install Zipkin




#gcloud compute instances stop INSTANCE_NAMES --zone=europe-west1-b