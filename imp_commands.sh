ETCDCTL_API=3 etcdctl --endpoints=https://[127.0.0.1]:2379 \
--cacert=/etc/kubernetes/pki/etcd/ca.crt \
--cert=/etc/kubernetes/pki/etcd/server.crt \
--key=/etc/kubernetes/pki/etcd/server.key \
snapshot save /opt/snapshot-pre-boot.db

etcdctl member list --endpoints=https://127.0.0.1:2379 --cacert=/etc/etcd/pki/ca.pem --cert=/etc/etcd/pki/etcd.pem --key=/etc/etcd/pki/etcd-key.pem

kubectl config get-clusters
kubectl config use-context cluster1


# approve csr:
kubectl certificate approve <name>

#deny csr:
kubectl certificate deny <name>


kubectl config --kubeconfig=my-kube-config use-context research


kubectl config set-credentials martin --client-key=martin.key --client-certificate=martin.crt --embed-certs=false
kubectl config set-credentials martin --client-certificate ./martin.crt --client-key ./martin.key


kubectl logs <pod> -c <container/init-cont>
