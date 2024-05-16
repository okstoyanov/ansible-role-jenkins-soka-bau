Role Name
=========
ansible-role-jenkins-soka-bau

Requirements
------------
Required RHEL9 OS\
Ansible packages\
For Installation and Use Instructions refer to the "Konfigurations- und Ansible-Rollen-Benutzeranleitung für RHEL9 Ansible Control Node SOKA-BAU v1.2.pptx"

Role Variables
--------------
Variables are being set in defaults/main.yml, vars/main.yml and as hostvars (host_vars).

Dependencies
------------
python\
pip\
#ansible-galaxy collection install community.general\
#ansible-galaxy collection install ansible.posix

Example Playbook
----------------
Including an example of how to use your role:

        ---
        - name: Jenkins Playbook
          hosts: jenkins
          roles:
            - ansible-role-jenkins-soka-bau

To obtain further Instructions refer to the "Konfigurations- und Ansible-Rollen-Benutzeranleitung für RHEL9 Ansible Control Node SOKA-BAU v-.-.pptx"