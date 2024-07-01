## Running the project on Kubernetes

- inside the k8-deployment-files folder
```sh
./run-kube.sh
kubectl apply -f <yaml-file-name> 
```

---

# Removing components in k8s

```bash
`kubectl delete <service/deployment>`
`kubectl delete all --all --all-namespaces` (will need to run ./13-... from jdaniels' project)
```

---

# Troubleshoot

- kubectl logs <pod-name>
- kubectl describe pods
- curl -I http://<subdomain>.rlcosta.cloudns.ch

---

# Secret creation for self-signed certificates 

Create a new TLS secret named tls-secret with the given key pair
- `kubectl create secret tls tls-secret --cert=path/to/tls.crt --key=path/to/tls.key`

---

# Secret creation for letsencrypt certificates(prefered)

- create the certificates with certbot:

- `chown $USER:$USER privkey.pem fullchain.pem`
- `kubectl create secret generic rlcosta-secret --from-file=/path/to/privkey.pem --from-file=/path/to/fullchain.pem`

