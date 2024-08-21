###Install OpenShift GitOps Operator

oc create ns openshift-gitops-operator
oc label namespace openshift-gitops-operator openshift.io/cluster-monitoring=true

oc apply -k ./operators/openshift-gitops

oc adm groups add-users cluster-admins admin
#oc get pods -n openshift-gitops 

###Install OCP Virtualization Operator
#oc create ns openshift-cnv
#oc apply -k ./operators/openshift-virtualization/operator
#oc get csv -n openshift-cnv
#oc get po -n openshift-cnv

## Install OCP Virt instance
#sleep 60
#oc apply -k ./operators/openshift-virtualization/instance

##
#oc label node -l node-role.kubernetes.io/infra= cluster.ocs.openshift.io/openshift-storage=
#oc create ns openshift-storage
#oc apply -k ./operators/odf
#sleep 200

#oc patch consoles.operator.openshift.io cluster --patch '{ "spec": { "plugins": ["odf-console"] } }' --type=merge



