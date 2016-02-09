## ALM platform setup
Prerequisites : Centos 7 distribution with sudo root privileges account    
  
### System preparation
- Install Ansible and Git tools (boostraping) 
```  
sudo -s -- << EOF  
rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm  
yum -y update  
yum -y install ansible git  
EOF
``` 
- Get configuration project  
```  
git clone https://github.com/Finaxys/ALMplatform  
cd ALMplatform  
```  
- Set up the system configuration using Ansible (users/services/storage setup)  
```  
sudo ansible-playbook -i 01-prepare-env/host.ansible 01-prepare-env/01-prepare-env.yml  
```  
  
### Setup Marathon/Mesos/Zookeeper cluster  
```  
 sudo docker-compose -f 02-setup-cluster/02-setup-cluster.yml up -d  
```  
  
### Build software factory stack  
```  
TODO : docker-compose in 03-run-services mounting the software factory stack (XLDeploy?)
```  
  
### Run software factory stack  
```  
TODO : call mesos frameworks based on build docker images and see...
```  
