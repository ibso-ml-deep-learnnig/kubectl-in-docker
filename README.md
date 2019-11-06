# kubectl in docker

  Kubernetes Client kubectl in docker can be used to communicate with K8s Cluster.
  

# Run the kubectl

  Use -v to load your own kube config file into container.
  Replace <command> with yours

    docker run --rm \
               -v ~/kubectl-in-docker/kubeconfig:/kubeconfig/kubeconfig \
               ericwudocker01/kubectl:stable --kubeconfig=/kubeconfig/kubeconfig <command>
               

# Docker Build

    make build
   
# Docker push

    make push
   
# Test

    make test
   
   
