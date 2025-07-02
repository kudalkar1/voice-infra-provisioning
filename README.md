# voice-infra-provisioning
Voice Infra setup using Terraform &amp; Ansible

# Voice Infrastructure Provisioning and Deployment

This project provisions and configures Linux-based servers for PABX and Recording applications on AWS, using Terraform and Ansible.

## Features

- Provision 4 EC2 instances (PABX App, Recording App, PABX DB, Recording DB)
- Deploy Apache and Nginx applications
- Install PostgreSQL databases
- Create Linux users for applications
- Configure monitoring and email alerts for services

## Prerequisites

- Terraform installed
- Ansible installed
- AWS credentials configured

## Terraform Usage

cd terraform

1. Initialize:
terraform init

2. Plan:
terraform plan -var "key_name=<YOUR_KEY_PAIR>"

3. Apply:
terraform apply -var "key_name=<YOUR_KEY_PAIR>"



Outputs will display the public IPs.


## Ansible Usage

1. Inventory file:

[pabx_app]
<PABX_APP_IP>

[recording_app]
<RECORDING_APP_IP>

[db_servers]
<PABX_DB_IP>
<RECORDING_DB_IP>


2. Run playbook:

cd ansible
ansible-playbook -i inventory playbook.yml


##Testing

- Use `curl` or browser to access the applications.
- Validate PostgreSQL installation.
- Check email alerts if services are down.

## Monitoring

Splunk forwarders or CloudWatch can be integrated as needed.

##Contributing

Feel free to fork and enhance this project.

---


