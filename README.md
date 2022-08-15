# Ansible in docker

Ansible in Docker is a tool to build and run Ansible playbooks in Docker containers.

# Quick start

* put your ansible script in `data`
* run docker-compose `docker-compose up -d`
* Go inside the container `docker exec -it ansible bash`
* Run the ansible scripts `ansible-playbook -i hosts.yml playbook.yml`
