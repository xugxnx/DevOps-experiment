### Clone the app:

git clone https://github.com/Sysnove/flask-hello-world.git

sed -i 's/app.run()/app.run(host="0.0.0.0")/g' flask-hello-world/hello.py

### Install "pack":

Linux: (curl -sSL "https://github.com/buildpacks/pack/releases/download/v0.19.0/pack-v0.19.0-linux.tgz" | tar -C /usr/local/bin/ --no-same-owner -xzv pack)

MacOS: (curl -sSL "https://github.com/buildpacks/pack/releases/download/v0.19.0/pack-v0.19.0-macos.tgz" | tar -C /usr/local/bin/ --no-same-owner -xzv pack)

### Build an image:

cd flask-hello-world

pack build --builder gcr.io/buildpacks/builder:v1 --env GOOGLE_ENTRYPOINT="python hello.py" flask-hello-world

### Push the image to Docker Hub

### Start minikube with ingress:

https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/

minikube addons enable ingress

### Create Service:

kubectl create -f Service.yml

### Create Ingress resource

kubectl create -f Ingress.yml

### Create a Deployment of our image placed on docker hub:

kubectl create -f Deployment.yml

### Add Ingress "host" to /etc/hosts or etc.

### Deploy Prometheus HELM chart:

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo add kube-state-metrics https://kubernetes.github.io/kube-state-metrics

helm repo update

helm install monitoring prometheus-community/prometheus -n monitoring -f Values.yml
