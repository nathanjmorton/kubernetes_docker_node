# CLUSTER > DEPLOYMENT > SERVICE 

# SHELL commands 
# $ export PROJECT_ID=project-id

# GCLOUD COMMANDS 
# $ gcloud projects list
# $ gcloud compute instances list
# $ gcloud config set project $PROJECT_ID
# $ gcloud config set compute/zone us-west1-a
# $ gcloud container clusters get-credentials container-name
# $ gcloud container clusters create container-name --num-nodes=2
# $ gcloud container clusters delete container-name

# KUBECTL COMMANDS 
# $ kubectl create deployment container-name --image=gcr.io/${PROJECT_ID}/container-name
# $ kubect get deployment container-name
# $ kubectl describe deployment dogslife
# $ kubectl expose deployment container-name --type=LoadBalancer --port 80 --target-port 8080
# $ kubectl get service
# $ kubectl get pods
# $ kubectl scale deployment container-name --replicas=3
# $ kubectl set image deployment/container-name container-name=gcr.io/${PROJECT_ID}/container-name
# $ kubectl delete service container-name

# DOCKER COMMANDS
# $ docker build -t gcr.io/${PROJECT_ID}/container-name .
# $ docker push gcr.io/${PROJECT_ID}/container-name
# $ docker run -p 8080:8080 gcr.io/${PROJECT_ID}/container-name
# $ docker images | grep container-name


FROM node:12
WORKDIR /usr/src
COPY ./package*.json ./
RUN npm i --no-optional && npm cache clean --force
ENV PATH /usr/src/node_modules/.bin:$PATH
WORKDIR /usr/src/app
COPY ./ ./ 
CMD npm start
