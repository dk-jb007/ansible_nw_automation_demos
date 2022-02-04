---

ansible_user : developer 
ansible_password : C1sco12345 
ansible_connection : ansible.netcommon.network_cli 
ansible_network_os : cisco.ios.ios
...