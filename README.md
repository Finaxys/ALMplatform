# ALM platform setup
Prerequisites : Centos 7 distribution with sudo root privileges account    
  
## System preparation  
- Install Ansible and Git tools (boostraping) 
```  
sudo -s -- << EOF  
rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm  
yum -y update  
yum -y install ansible git  
EOF
```  
- Set up the system configuration using Ansible (users/services/storage setup)
```  
git clone https://github.com/Finaxys/ALMplatform  
cd ALMplatform  
ansible-playbook -i 01-prepare-env/host.ansible 01-prepare-env/01-prepare-env.yml  
```  
## Set up the Marathon/Mesos/Zookeeper cluster  
```  
  
```  
  
- 02-setup-cluster  
- 03-run-services  
  
