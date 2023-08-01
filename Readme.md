** Make sure to pip install ansible, apt has an older copy **

based on [ippsec parrot](https://github.com/IppSec/parrot-build)

# Instructions
* Start with Kali
* Install Ansible (pip3 install ansible)
* Clone and enter the repo (git clone)
* ansible-galaxy install -r requirements.yml
* Make sure we have a sudo token (sudo whoami)
* ansible-playbook main.yml

