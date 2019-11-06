# kubectl-in-docker
kubectl in docker 

Run the kubectl

    docker run --rm \
               -v ~/kubectl-in-docker/kubeconfig:/kubeconfig/kubeconfig \
               ericwudocker01/kubectl:stable --kubeconfig=/kubeconfig/kubeconfig <command>
               

Docker Build

    make build
   
Docker push

    make push
   
Test

    make test
   
   
