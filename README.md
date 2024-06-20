# Simple docker & k8s project

Project's goal:

- Four applications running in the k8s cluster as service type `CluserIP` 
- Nginx will forward requests to the apps based on their domain names
- Nginx is associated with an AWS loadbalancer, so the requests will allways pass through nginx
- The four apps have databases and paths associated with them for persistence


---

Instructions are inside docker-deployment-files and k8s-deployment-files



    1  clear
    2  sudo hostnamectl set-hostname eks.controller
    3  sudo reboot
    4  yum -y group install 'Development Tools'
    5  sudo yum -y group install 'Development Tools'
    6  clear
    7  git clone https://github.com/jdmedeiros/k8s.git
    8  clear
    9  cd k8s/
   10  git pull
   11  git checkout original_v126_update 
   12  git pull
   13  clear
   14  cat 0-install-kubernetes-tools 
   15  echo "Install kubectl - be carefull with the version - should not be more than 1 away from the kubernetes version"
   16  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
   17  sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
   18  kubectl version --client --output=yaml
   19  kubectl --vestion
   20  kubectl --version
   21  kubectl version
   22  sudo yum remove awscli
   23  sudo yum remove awscliclear
   24  clear
   25  cat 0-install-kubernetes-tools 
   26  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
   27  unzip awscliv2.zip
   28  sudo ./aws/install
   29  aws --version
   30  clear
   31  cat 0-install-kubernetes-tools 
   32  sudo curl -o /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/v4.35.2/yq_linux_amd64
   33  sudo chmod +x /usr/local/bin/yq
   34  kubectl completion bash >>  ~/.bash_completion
   35  . /etc/profile.d/bash_completion.sh
   36  . ~/.bash_completion
   37  aws
   38    source <(kubectl completion bash)
   39  kubectl completion bash > ~/.kube/completion.bash.inc
   40    printf "
   41    # kubectl shell completion
   42    source '$HOME/.kube/completion.bash.inc'
   43    " >> $HOME/.bash_profile
   44    source $HOME/.bash_profile
   45    kubectl completion bash > ~/.kube/completion.bash.inc
   46  mkdir ~/.kube
   47  cd ~
   48    source <(kubectl completion bash)
   49    kubectl completion bash > ~/.kube/completion.bash.inc
   50    printf "
   51    # kubectl shell completion
   52    source '$HOME/.kube/completion.bash.inc'
   53    " >> $HOME/.bash_profile
   54    source $HOME/.bash_profile
   55  clear
   56  cd k8s/
   57  clear
   58  kubectl get 
   59  clear
   60  kubectl get all
   61  clear
   62  kubectl version
   63  kubectl get svc
   64  cd ./aws
   65  ls
   66  cd .//
   67  cd ..
   68  cd
   69  cd .aws
   70  cd ./aws
   71  aws eks update-kubeconfig --region us-east-1 --name kubernetes-the-hard-way
   72  aws configure
   73  aws eks update-kubeconfig --region us-east-1 --name kubernetes-the-hard-way
   74  nano .aws/credentials 
   75  aws eks update-kubeconfig --region us-east-1 --name kubernetes-the-hard-way
   76  nano .aws/credentials 
   77  aws eks update-kubeconfig --region us-east-1 --name kubernetes-the-hard-way
   78  kubectl get svc
   79  clear
   80  cd .aws/
   81  ls
   82  nano c
   83  nano config 
   84  nano credentials 
   85  nano config 
   86  nano credentials 
   87  aws eks update-kubeconfig --region us-east-1 --name kubernetes-the-hard-way
   88  aws eks update-kubeconfig --region us-east-1 --name cluster
   89  kubectl get svc
   90  kubectl get all
   91  clear
   92  ln -s /usr/local/bin/kubectl /usr/local/bin/k
   93  sudo ln -s /usr/local/bin/kubectl /usr/local/bin/k
   94  aws eks list-clusters
   95  clear
   96  nano .aws/credentials 
   97  aws 
   98  cler
   99  clear
  100  k get all
  101  clear
  102  sudo amazon-linux-extras install epel
  103  clear
  104  sudo yum install certboy
  105  sudo yum install certbot
  106  clear
  107  curl ifconfig.me
  108  dig plik.rlcosta.cloudns.ch
  109  nslookup plik.rlcosta.cloudns.ch
  110  curl ifconfig.me
  111  sudo certbot only
  112  sudo certbot certonly
  113  cd /etc/letsencrypt/
  114  ls
  115  sudo certbot certonly
  116  cd archive/
  117  ls
  118  sudo cd archive/
