#!/usr/bin/bash
echo "installing knative operator"
# knative operator
kubectl apply -f https://github.com/knative/operator/releases/download/v0.25.0/operator.yaml

echo "installing knative serving"
# knative serving
kubectl apply -f ./knative_serving.yaml

echo "installing knative eventing"
# knative eventing
kubectl apply -f ./knative_eventing.yaml

echo "setup istio"
kubectl apply -f https://github.com/knative/net-istio/releases/download/v0.24.0/istio.yaml
kubectl apply -f https://github.com/knative/net-istio/releases/download/v0.24.0/net-istio.yaml

echo "configure DNS"
kubectl apply -f https://github.com/knative/serving/releases/download/v0.25.0/serving-default-domain.yaml