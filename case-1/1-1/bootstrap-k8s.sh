#/bin/bash

set -e

KUBESPRAY_URL="https://github.com/kubernetes-sigs/kubespray.git"
KUBESPRAY_VERSION=v2.13.2



git clone https://github.com/kubernetes-sigs/kubespray.git
cd kubespray
git checkout $KUBESPRAY_VERSION
cd -
cp -R trendyol_cluster kubespray/invetory
echo "You can run:"
echo "cd kubespray && sudo ansible-playbook -i inventory/trendyol_cluster/hosts.yml cluster.yml --become --become-user=root -v --private-key=~/tycase.pem"
