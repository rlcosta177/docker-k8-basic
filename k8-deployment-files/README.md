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
  ```bash
  sudo yum -y group install 'Development Tools'
  sudo yum install epel-release | NOT SURE
  sudo yum install certbot ('mod_ssl' & 'python2-certbot-apache' as well for apache)
  sudo certbot certonly
  > [option 1]
  > example.domain.com app1.example.domain.com app2.exampe.domain.com app3.exampe.domain.com app4.exampe.domain.com
  ```
- copy the certifcates to another folder (`out of the project's folder` OR `inside the folder and add them to '.gitignore'` )

- `chown $USER:$USER privkey.pem fullchain.pem` (execute it as normal user | change to 'your-user':'your-user' if executing as root)
- `kubectl create secret generic rlcosta-secret --from-file=/path/to/privkey.pem --from-file=/path/to/fullchain.pem`
- then associate them in the `nginx-configmap.yaml` and `nginx-deployment.yaml` files 

