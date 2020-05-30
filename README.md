# Kubernetes With Node in Docker

## Cluster > Deployment > Service 

- Build Docker image
- Push Docker image to Google Container Registry
- Spin up a cluster of virtual machines
- Deploy a kubernetes as a service
- Expose the service behind a firewall
- Scale up pods
- Update the container image
- Clean up

```
$ docker build -t gcr.io/${PROJECT_ID}/container-name .
$ docker push gcr.io/${PROJECT_ID}/container-name

$ gcloud projects list
$ export PROJECT_ID=project-id
$ gcloud config set project $PROJECT_ID
$ gcloud config set compute/zone us-west1-a
$ gcloud container clusters create container-name --num-nodes=2
$ gcloud compute instances list
$ kubectl create deployment container-name --image=gcr.io/${PROJECT_ID}/container-name
$ kubect get deployment container-name
$ kubectl describe deployment container-name
$ kubectl expose deployment container-name --type=LoadBalancer --port 80 --target-port 8080
$ kubectl get service
$ kubectl get pods
$ kubectl scale deployment container-name --replicas=3
$ kubectl set image deployment/container-name container-name=gcr.io/${PROJECT_ID}/container-name
$ kubectl delete service container-name
$ gcloud container clusters delete container-name

```
