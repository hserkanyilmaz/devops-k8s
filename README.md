# devops-k8s

# Terraform and Ansible Instructions

## Running Terraform

To initialize the Terraform environment and download required providers:

```bash
cd terraform/dev
terraform init
```

To create the infrastructure in the specified environment folder:

```bash
cd terraform/dev
terraform apply
```

To destroy the infrastructure:

```bash
cd terraform/dev
terraform destroy
```

## Running Ansible

To run the Ansible playbook to setup the Kubernetes cluster:

```bash
cd ansible
ansible-playbook -i ansible/inventories/dev/hosts.ini playbooks/setup_kubernetes.yml
```
