# Website A


## Setup Remote Machine

After adding a sudo user, run these commands to start the wordpress docker-compose net.

The DNS Record for **ua-help.org** and **uahelp.org** must point to domain specified ist hosts.yml

```
cd server-config
ansible-playbook -i ./hosts.yml ./provisioning/index.yml -K
```

## Starting the Container 

```
cd docker
./start.sh
```