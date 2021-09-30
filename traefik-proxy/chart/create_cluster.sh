k3d cluster create dev --k3s-server-arg '--no-deploy=traefik' --api-port 6550 -p "80:80@loadbalancer" -p "443:443@loadbalancer" --agents 2 --kubeconfig-update-default=true
