# LAB Prometheus and Grafana on CentOS8

Sun 16.02.2020

Lab used for learning Prometheus, Grafana and CentOS8 in the same time. IaC provided through Terraform and Ansible on a vSphere 6.7 test infrastructure. Prometheus and Grafana will reside on the same VM. No HA (maybe in the next lab). Version control done with Git and GitHub.

## Lab configuration

### Prerequisites

- *a vSphere 6.7 test infrastructure*
- *Terraform and Ansible installed on the control workstation*

        $ terraform -v
        Terraform v0.12.20
        + provider.vsphere v1.16.1

        $ ansible --version
            ansible 2.9.4

- *`govc` installed (optional) on the control workstation* 

| **Hostname** | **IP** | **CPU** | **RAM** | **Storage** |
| --- | --- | --- | --- | --- |
| okila.hl.local | 192.168.7.95 | 2 | 4 GB | 50 GB  thin |

CentOS8 is installed using UEFI boot and this is reflected in Terraform `main.tf` file as it needs `firmware` and `efi_secure_boot_enabled` parameters configured. The template used for cloning the VM is a minimal netinstall, which is already updated when the network installation is completed, but you have to install `Perl` on it otherwise the customization script on vSphere won't work. `Perl` isn't installed by default on a minimal install.

All the variables are exposed in `terraform.tfvars` file except the `username` and `password` needed to access the vSphere infrastructure. These two variables are exported as environment variables from the file `vsphere.env` excluded in `.gitignore` for security reasons. Replace them with your own credentials.

        $ cat vsphere.env
        export TF_VAR_vsphere_user="user@domain.local"
        export TF_VAR_vsphere_password="password"

Of course before running terraform commands the `.env` file must be sourced.



## Links:

- [Prometheus](https://prometheus.io/)
- [Grafana](https://grafana.com/grafana/)
- [CentOS](https://www.centos.org/)
- [Terraform](https://www.terraform.io/)
- [Ansible](https://www.ansible.com/)
- [Git](https://git-scm.com/)
- [GitHub](https://github.com/)


