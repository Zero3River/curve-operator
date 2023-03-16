# etcd configmap
kubectl delete cm curve-etcd-config-a -n curvebs
kubectl delete cm curve-etcd-config-b -n curvebs
kubectl delete cm curve-etcd-config-c -n curvebs

# override configmap
kubectl delete cm etcd-endpoints-override -n curvebs
# kubectl delete cm mds-endpoints-override -n curvebs

# chunkserver 4 configmap
kubectl delete cm format-chunkfilepool-conf -n curvebs

kubectl delete cm curve-chunkserver-conf -n curvebs
kubectl delete cm cs-client-conf -n curvebs
kubectl delete cm s3-conf -n curvebs

# etcd deployment 
kubectl delete deploy curve-etcd-a -n curvebs
kubectl delete deploy curve-etcd-b -n curvebs
kubectl delete deploy curve-etcd-c -n curvebs

# mds configmap
kubectl delete cm curve-mds-config -n curvebs

# mds deployment
kubectl delete deploy curve-mds-a -n curvebs
kubectl delete deploy curve-mds-b -n curvebs
kubectl delete deploy curve-mds-c -n curvebs

# all po in curvebs cluster
kubectl delete --all pods -n curvebs

# all job in curvebs cluster
kubectl delete --all job -n curvebs

# curvecluster cr
kubectl delete -f config/samples/
