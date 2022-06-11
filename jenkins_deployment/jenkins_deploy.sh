#! /bin/bash
# add jenkins repository
# helm repo add jenkinsci https://charts.jenkins.io
# helm repo update
#create jenkins namespace
kubectl create namespace jenkins
# kubectl apply -f jenkins-volume.yaml
# kubectl apply -f jenkins-sa.yaml
# minikube ssh
#sudo chown -R 1000:1000 /data/jenkins-volume
# helm install jenkins -n jenkins -f jenkins-values.yaml jenkinsci/jenkins
kubectl create -f jenkins-deployment.yaml -n jenkins
kubectl apply -f jenkins-service.yaml -n jenkins