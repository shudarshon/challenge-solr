# Goal

Goal is to install solr cloud with  external zookeeper ensemble integration. This installation process implements solr cloud setup ansible.

# Prerequisites

* Java must be installed in the OS to run solr. Since Ansible is used to complete this challenge so install Ansible in workstation and install java in the remote machines, You can also find Ansible java installation role [here] (https://github.com/shudarshon/scripts/tree/master/ansible/role-collection/roles).

* To setup zookeeper ensemble with 3 nodes using ansible role click [here] (https://github.com/shudarshon/challenge-zookeeper/tree/master/3.1-setup-ensemble-multi-server).

* Gather the private IP's of zookeeper instances which will be later used in solr ansible role (in roles/solr/tasks/task.yml file).


# Procedure

* If you not to choose manage infrastructure with terraform then Change `hosts` and `play.yml` file accordingly. Remember to change the variable label of ansible in var file (defaults/main.yml) of anisble role. Then run `ansible-playbook -i hosts play.yml`.

* If you choose terraform then simply use:
    * make init - only first time for installing necessary plugin
    * make plan - see the reosurces going to be changed by terraform
    * make apply - apply change
    * make destroy - remove infrastructure components and rollback

# Test

To check solr status, go to solr instance ip:8983 port and check cloud tab in the left navigation bar. It should show solr cloud nodes.

# Issue

If you find any issue then create it in the GitHub repo. For any suggestion, information or any help mail me at sdrsn.chaki@gmail.com. You can get me on my blog [here](www.shudarshon.com).
