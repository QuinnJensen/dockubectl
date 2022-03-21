# dockubectl
debian-slim based docker container with kubectl installed

# usage example - run a kubectl port-forward command for portainer
```
docker run -it --rm --name dockubectl -v /root/.kube:/root/.kube --network=host jensenq/dockubectl kubectl port-forward --address 0.0.0.0 -n portainer service/portainer-agent 9002:9001
```
