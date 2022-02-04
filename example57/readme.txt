 259  cd example57
  260  ls
  261  ansible-vault create secret.yml
  262  ansible-vault edit secret.yml
  263  ansible-vault view secret.yml
  264  ansible-vault rekey secret.yml
  265  ansible-vault encrypt file1.yml
  266  ansible-playbook file1.yml
  267  ansible-playbook --ask-vault-pass file1.yml

  269  ansible-vault decrypt file1.yml --output=file1_extracted.yml
  270  ansible-vault encrypt file2.yml file3.yml
  271  history




  272  ansible-playbook file1_extracted.yml --syntax-check
  273  ansible-playbook file1_extracted.yml --start-at-task="Ansible Jinja2 template example"
  274  ansible-playbook file1_extracted.yml -v
  275  ansible-playbook file1_extracted.yml -vv
  276  ansible-playbook file1_extracted.yml -vvv
  277  ansible-playbook file1_extracted.yml


  279  ansible-playbook file1_extracted.yml
  280  ansible-doc -h
  281  ansible-doc --help
  282  ansible-doc -l
  283  ansible-doc ansible.posix.acl
  284  exit


  