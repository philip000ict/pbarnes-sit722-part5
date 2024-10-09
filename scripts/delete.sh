# Your Solution
#
# Destroys the microservice on Kubernetes.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number of the image to destroy.
#
# Usage:
#
#   ./scripts/delete.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

envsubst < ./scripts/kubernetes/deploy.yaml | kubectl delete -f
