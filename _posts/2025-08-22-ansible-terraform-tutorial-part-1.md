---
layout: post
title: "Ansible+Terraform Project - Begginer to Advanced - part-1"
date: 2025-08-22 08:00:00 +0600
categories: Tutorial
tags: homelab tutorial ansible terraform Iac Cac
image:
 path: /assets/img/headers/2025/2025-08-22-ansible-terraform.webp
 lqip: data:image/webp;base64,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
---
## Introduction
Here , We will create a awesome hands-on experience in ansible with terraform project. Wordpress setup with separated database & web-contact on docker containerization.

## Overview of Automation in IT
IT automation refers to the use of software to create repeatable instructions and processes to replace or reduce human interaction with IT systems. Automation helps:

- Increase efficiency and consistency
- Reduce human errors
- Accelerate deployment cycles
- Enable scalability
- Improve compliance and auditability

## Introduction to Ansible and Terraform
**Ansible** is an open-source automation tool focused on configuration management, application deployment, and task automation. It uses a simple YAML-based language (playbooks) to describe automation jobs.

**Terraform** is an infrastructure as code (IaC) tool that enables you to safely and predictably create, change, and improve infrastructure. It uses declarative configuration files to manage cloud and on-prem resources.

## Target Audience and Prerequisites
This guide is designed for:

- DevOps engineers
- System administrators
- Cloud engineers
- IT professionals looking to automate infrastructure

Prerequisites:

- Basic Linux command line knowledge
- Understanding of cloud concepts
- Familiarity with YAML and JSON formats
- Virtualization basics

##  **Understanding Ansible**

### What is ansible ??
Ansible is an open source IT automation engine that automates

- provisioning
- configuration management
- application deployment
- orchestration

and many other IT processes. It is free to use, and the project benefits from the experience and intelligence of its thousands of contributors.

### How its work?
Ansible is agentless in nature, which means you don't need install any software on the manage nodes.

For automating Linux and Windows, Ansible connects to managed nodes and pushes out small programs—called Ansible modules—to them. These programs are written to be resource models of the desired state of the system. Ansible then executes these modules (over SSH by default), and removes them when finished. These modules are designed to be idempotent when possible, so that they only make changes to a system when necessary.

For automating network devices and other IT appliances where modules cannot be executed, Ansible runs on the control node. Since Ansible is agentless, it can still communicate with devices without requiring an application or service to be installed on the managed node.

### Key Features and Benefits

- **Agentless architecture**: No need to install agents on managed nodes.
- **Idempotency**: Ensures the same result regardless of how many times you run it.
- **Simple YAML syntax**: Easy-to-read playbooks.
- **Extensive module library**: Over 3,000 modules for various tasks.
- **Push-based execution**: Changes are pushed from the control node.

### Core Components of Ansible
#### Inventory
Ansible inventory file is a fundamental component of Ansible that defines the hosts (remote systems) that you want to manage and the groups those hosts belong to. The inventory file can be static (a simple text file) or dynamic (generated by a script). It provides Ansible with the information about the remote nodes to communicate with during its operations.

##### Static Inventory
A static inventory file is typically a plain text file (usually named hosts or inventory) and is structured in INI or YAML format. Here are examples of both formats:

```yaml
# inventory file: hosts

[webservers]
web1.example.com
web2.example.com

[dbservers]
db1.example.com
db2.example.com

[all:vars]
ansible_user=admin
ansible_ssh_private_key_file=/path/to/key
```

```yaml
# inventory file: hosts.yaml

all:
  vars:
    ansible_user: admin
    ansible_ssh_private_key_file: /path/to/key
  children:
    webservers:
      hosts:
        web1.example.com:
        web2.example.com:
    dbservers:
      hosts:
        db1.example.com:
        db2.example.com:
```

#### Dynamics Inventory
A dynamic inventory is generated by a script or plugin and can be used for environments where hosts are constantly changing (e.g., cloud environments). The script or plugin fetches the list of hosts from a source like AWS, GCP, or any other dynamic source.

Here is an example of a dynamic inventory script for AWS EC2:
```python
#!/usr/bin/env python

import json
import boto3

def get_aws_ec2_inventory():
    ec2 = boto3.client('ec2')
    instances = ec2.describe_instances()
    inventory = {
        'all': {
            'hosts': [],
            'vars': {
                'ansible_user': 'ec2-user',
                'ansible_ssh_private_key_file': '/path/to/key'
            }
        },
        '_meta': {
            'hostvars': {}
        }
    }

    for reservation in instances['Reservations']:
        for instance in reservation['Instances']:
            if instance['State']['Name'] == 'running':
                public_ip = instance['PublicIpAddress']
                inventory['all']['hosts'].append(public_ip)
                inventory['_meta']['hostvars'][public_ip] = {
                    'ansible_host': public_ip
                }

    print(json.dumps(inventory, indent=2))

if __name__ == '__main__':
    get_aws_ec2_inventory()
```

--> Usage case inventory, 
```bash
ansible-playbook -i inventory <Adhoc command or Playbook.yml>
```

#### Playbooks
A **Playbook** is a YAML file that defines a series of actions to be executed on managed nodes. It contains one or more "plays" that map groups of hosts to roles.

**Example**:
```yaml
- name: Update web servers
  hosts: webservers
  remote_user: root

  tasks:
  - name: Ensure apache is at the latest version
    ansible.builtin.yum:
      name: httpd
      state: latest

  - name: Write the apache config file
    ansible.builtin.template:
      src: /srv/httpd.j2
      dest: /etc/httpd.conf

- name: Update db servers
  hosts: databases
  remote_user: root

  tasks:
  - name: Ensure postgresql is at the latest version
    ansible.builtin.yum:
      name: postgresql
      state: latest

  - name: Ensure that postgresql is started
    ansible.builtin.service:
      name: postgresql
      state: started
```

- **Play**: A Play is a single, complete execution unit within a playbook. It specifies which hosts to target and what tasks to execute on those hosts. Plays are used to group related tasks and execute them in a specific order.

```yml
- name: Install and configure Nginx
  hosts: webservers
  tasks:
    - name: Install Nginx
      apt:
        name: nginx
        state: present
```
#### Modules
Modules are the building blocks of Ansible tasks. They are small programs that perform a specific action on a managed node, such as installing a package, copying a file, or managing services.

**Example**:
The apt module used in a task to install a package:
```yaml 
- name: Install Nginx
  apt:
    name: nginx
    state: present
```

#### Tasks
Tasks are individual actions within a play that use modules to perform operations on managed nodes. Each task is executed in order and can include conditionals, loops, and handlers.
**Example**:
```yaml
- name: Install Nginx
  apt:
    name: nginx
    state: present

- name: Start Nginx service
  service:
    name: nginx
    state: started
```

#### Collections
Collections are a distribution format for Ansible content. They bundle together multiple roles, modules, plugins, and other Ansible artifacts. Collections make it easier to share and reuse Ansible content.
Example

A collection structure might look like this:
```structure
my_collection/
├── roles/
│   └── my_role/
│       └── tasks/
│           └── main.yml
├── plugins/
│   └── modules/
│       └── my_module.py
└── README.md
```

--> Using a collection in PlayBooks ,**Example**:
```yaml
- name: Use a custom module from a collection
  community.general.my_module:
    option: value
```

#### Roles
An Ansible role is a reusable, self-contained unit of automation that is used to organize and manage tasks, variables, files, templates, and handlers in a structured way.

Roles help to encapsulate and modularize the logic and configuration needed to manage a particular system or application component.

This modular approach promotes reusability, maintainability, and consistency across different playbooks and environments.

---> **Key components of an ansible role**:

==> *Tasks*
The main list of actions that the role performs.
==> *Handlers*
Tasks that are triggered by changes in other tasks, typically used for actions like restarting services.
==> *Files*
Static files that need to be transferred to managed hosts.
==> *Templates*
Jinja2 templates that can be rendered and transferred to managed hosts.
==> *Vars*
Variables that are used within the role.
==> *Defaults*
Default variables for the role, which can be overridden.
==> *Meta*
Metadata about the role, including dependencies on other roles.
==> *Library*
Custom modules or plugins used within the role.
==> *Module_defaults*
Default module parameters for the role.
==> *Lookup_plugins*
Custom lookup plugins for the role.

---> Directory structure of Ansible role
An Ansible role follows a specific directory structure:
```code
<role_name>/
  ├── defaults/
  │   └── main.yml
  ├── files/
  ├── handlers/
  │   └── main.yml
  ├── meta/
  │   └── main.yml
  ├── tasks/
  │   └── main.yml
  ├── templates/
  ├── vars/
      └── main.yml
```
##### Why Use Ansible Roles?
**Modularity**
Roles allow you to break down complex playbooks into smaller, reusable components. Each role handles a specific part of the configuration or setup.
- **Reusability**
Once created, roles can be reused across different playbooks and projects. This saves time and effort in writing redundant code.

- **Maintainability**
By organizing related tasks into roles, it becomes easier to manage and maintain the code. Changes can be made in one place and applied consistently wherever the role is used.

- **Readability**
Roles make playbooks cleaner and easier to read by abstracting away the details into logically named roles.

- **Collaboration**
Roles facilitate collaboration among team members by allowing them to work on different parts
of the infrastructure independently.

- **Consistency**
Using roles ensures that the same setup and configuration procedures are applied uniformly across multiple environments, reducing the risk of configuration drift.
#### Installation and Setup
For installation & setup,Details in this webpage: [Ansible Documentation](https://docs.ansible.com/)

### Understanding the Terraform

#### What is Terraform?? 
Terraform is an infrastructure as code tool that allows you to define and provision data center infrastructure using a declarative configuration language.
#### Key Features and Benefits

- **Multi-cloud support**: Works with AWS, Azure, GCP, and others
    
- **Resource graph**: Creates and modifies resources efficiently
    
- **Change automation**: Applies complex changesets with minimal human interaction
    
- **State management**: Tracks resource state for modification and deletion
    
- **Declarative syntax**: Describes what infrastructure should look like

#### IaC??
Before the advent of IaC, infrastructure management was typically a manual and time-consuming process. System administrators and operations teams had to:

1. Manually Configure Servers: Servers and other infrastructure components were often set up and configured manually, which could lead to inconsistencies and errors.
2. Lack of Version Control: Infrastructure configurations were not typically version-controlled, making it difficult to track changes or revert to previous states.
3. Documentation Heavy: Organizations relied heavily on documentation to record the steps and configurations required for different infrastructure setups. This documentation could become outdated quickly.
4. Limited Automation: Automation was limited to basic scripting, often lacking the robustness and flexibility offered by modern IaC tools.
5. Slow Provisioning: Provisioning new resources or environments was a time-consuming process that involved multiple manual steps, leading to delays in project delivery.
    
IaC addresses these challenges by providing a systematic, automated, and code-driven approach to infrastructure management. Popular IaC tools include Terraform, AWS CloudFormation, Azure Resource Manager templates others.

These tools enable organizations to define, deploy, and manage their infrastructure efficiently and consistently, making it easier to adapt to the dynamic needs of modern applications and services.

#### Why Terraform??

There are multiple reasons why Terraform is used over the other IaC tools but below are the main reasons.

1. **Multi-Cloud Support**: Terraform is known for its multi-cloud support. It allows you to define infrastructure in a cloud-agnostic way, meaning you can use the same configuration code to provision resources on various cloud providers (AWS, Azure, Google Cloud, etc.) and even on-premises infrastructure. This flexibility can be beneficial if your organization uses multiple cloud providers or plans to migrate between them.
2. **Large Ecosystem**: Terraform has a vast ecosystem of providers and modules contributed by both HashiCorp (the company behind Terraform) and the community. This means you can find pre-built modules and configurations for a wide range of services and infrastructure components, saving you time and effort in writing custom configurations.
3. **Declarative Syntax**: Terraform uses a declarative syntax, allowing you to specify the desired end-state of your infrastructure. This makes it easier to understand and maintain your code compared to imperative scripting languages.
4. **State Management**: Terraform maintains a state file that tracks the current state of your infrastructure. This state file helps Terraform understand the differences between the desired and actual states of your infrastructure, enabling it to make informed decisions when you apply changes.
5. **Plan and Apply**: Terraform's "plan" and "apply" workflow allows you to preview changes before applying them. This helps prevent unexpected modifications to your infrastructure and provides an opportunity to review and approve changes before they are implemented.
6. **Community Support**: Terraform has a large and active user community, which means you can find answers to common questions, troubleshooting tips, and a wealth of documentation and tutorials online.
7. **Integration with Other Tools**: Terraform can be integrated with other DevOps and automation tools, such as Docker, Kubernetes, Ansible, and Jenkins, allowing you to create comprehensive automation pipelines.
8. **HCL Language**: Terraform uses HashiCorp Configuration Language (HCL), which is designed specifically for defining infrastructure. It's human-readable and expressive, making it easier for both developers and operators to work with.
#### Core Components of Terraform

##### Providers
Providers are plugins that interact with APIs to manage resources. Example providers:
- AWS
- Azure
- Google Cloud
- VMware
- Docker
##### Modules
Modules are containers for multiple resources that are used together. They can be reused across configurations.
##### State Management
Terraform maintains a state file (terraform.tfstate) that maps real-world resources to your configuration.
##### Provisioning
Terraform can provision infrastructure and then bootstrap it using provisioners (though Ansible is often better for configuration management).

#### Installation & Setup
According to the system operating , follow the [website terrraform](https://developer.hashicorp.com/terraform).