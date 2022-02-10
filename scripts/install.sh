if [[ $# -ge 1 ]]; then
    cd "$1"
fi

cd ../gfa-arch/scripts/
minikube start
minikube docker-env
eval $(minikube -p minikube docker-env)
sh dockerize-all.sh "$1"
cd ../gfa
helm uninstall gfa
sleep 10s
helm install gfa .