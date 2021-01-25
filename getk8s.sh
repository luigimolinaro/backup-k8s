#/bin/bash
#Luigi Molinaro - luigi.molinaro@gmail.com
# You need : 
# https://github.com/itaysk/kubectl-neat correctly installed 
# https://github.com/kubernetes-sigs/krew correctly installed
 
for n in $(kubectl neat get -o=name pvc,configmap,serviceaccount,secret,ingress,service,deployment,statefulset,hpa,job,cronjob)
do
    mkdir -p $(dirname $n)
    kubectl get -o=yaml $n > $n.yaml
done
