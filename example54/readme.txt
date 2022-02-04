ROLES CAN BE DEFINED IN 3 PLACES 

1. ./roles - HAS THE HIGHEST PREFERENCE
2. ~/.ansible/roles - is checked after that 
3. /etc/ansible/roles - is checked next 



ALL UPDATES ARE DONE IN ANSIBLE YAML FILE 


# Roles example

---
  -
    hosts : sandbox-iosxe-latest-1.cisco.com
    gather_facts : true
    connection : local

    roles :
      - role : microsoftrole
        creator : Dr. Vishwanath Rao

      


...



# Roles example

---
  -
    hosts : sandbox-iosxe-latest-1.cisco.com
    gather_facts : true
    connection : local

    pre_tasks :
      - debug : 
          msg : "Hello microsoft "

    roles :
      - microsoftrole
      
    post_tasks :
      - debug : 
          msg : "Happy Learning "

...






# include role demo  

---
  -
    hosts : sandbox-iosxe-latest-1.cisco.com
    gather_facts : true
    connection : local

    tasks :

        - name : check local time
          command : date
          register : command_result
          changed_when : false 

        - name : print local time 
          debug : 
            var : command_result['stdout']
        

        - name : Call the microsoft role using include role 
          include_role :
            name : microsoftrole
        

         - name : Call the microsoft role 
          include_role :
            name : microsoftrole
          vars :
            creator : Dr. Vishwanath Rao    # overriding default variables 



         - name : Call the microsoft role using import role 
           import_role :
            name : microsoftrole
           vars :
            creator : Dr. Vishwanath Rao    # overriding default variables 



        - name  :  Run Show version on NXOS Devices 
          nxos_command :
            commands : 
              - show version
              - show interfaces 
          ignore_errors : yes
...
          