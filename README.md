## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

!https://drive.google.com/file/d/1VylduEazZnVmDDB-WH4dQfamdg1ljeLr/view?usp=sharing

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Docker Install: https://drive.google.com/file/d/1TLhC6j3aoQK6UXpQeQKbCiF2OeAO7c0M/view?usp=sharing
  ELK Config: https://drive.google.com/file/d/1peJapqYyVGI7W6Gb1BLnyY2dACxUaGoW/view?usp=sharing
  Filebeat Config:  https://drive.google.com/file/d/1EBkO1scm0tqLa7TuYpNnZ6osd3-oK1mo/view?usp=sharing
  Metricbeat Config: https://drive.google.com/file/d/12mN3pK2Gc3U2Im_jrsfDheggyiA6zJHF/view?usp=sharing


This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- _TODO: Load balancers are important to security as they off load heavy traffic away from a server when needed.  This is especially important in guarding against a DDoS attack.  In such cases they shift traffic away from a server to the cloud.  

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.
- _TODO: Filebeat aggregates and monitors the logs in the systems and allows the capability to push logs to other applications such as Metricbeats for aggregated statistics and visual monitoring. 
- _TODO: Metricbeat aggregates log data and pushes into a GUI interface for easier monitoring of system data.
- _TODO: Kibana provides a web-based GUI interface for the Metricbeat activities.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name       | Function               | IP Address     | Operating System |
|------------|------------------------|----------------|------------------|
| Jump Box   | Gateway                | 10.0.0.4       | Linux            |
| Web1       | DVWA Virtual Webserver | 10.0.0.16      | Linux            |
| Web1       | DVWA Virtual Webserver | 10.0.0.17      | Linux            |
| ElkVM1     | Elk Server             | 10.1.0.4       | Linux            |
| RedTeamLB3 | Load Balancer          | 52.175.221.102 | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: 

Machines within the network can only be accessed by my home computer.
- _TODO: I allowed access via my home computer with IP: 

A summary of the access policies in place can be found in the table below.



### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because this allows many machines to be updated at the same time with the same configuration.
- _TODO: As a configuration management tool Anisble is advantageous because changes can be made within the Ansible container and pushed to all machines at the same time.  This way it is not necessary to update system by system.  This saves on resources as well as ongoing fixes due to errors when updating machines individually.

The playbook implements the following tasks:
- _TODO: Installs docker on the ELK VM.
        Installs Python3 which is necessary programming language to run docker.
        Instructs to allow max memory usage, allowing the machine to run better.
        Downloads and launches a docker Elk container.
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

!https://drive.google.com/file/d/14ulO1Ud6OBdlL3lGDTfFMYFtpN62pKgL/view?usp=sharing

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: 
        10.0.0.4
        10.0.0.16
        10.0.0.17

We have installed the following Beats on these machines:
- _TODO: Filebeats, Metricbeats, and Elasticsearch

These Beats allow us to collect the following information from each machine:
- _TODO: These Beats monitor the VM logs, monitoring the health of the machines as well as network activity in and out of the machines.  For example Metricbeats can examine IP addresses accessing the network and the ports they are trying to access. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Elkconfig file to the ansible directory in the Elk machine.
- Update the hosts file to include the Elk VM (IP: 10.1.0.4).  Note, this should be a separate section in the hosts file from the "Webservers" section.  The new section in this file is titled [Elk]
- Run the playbook, and navigate to the URL http://10.1.0.4:5601/app/kibana to check that the installation worked as expected.  If it worked as expected a webpage with the Kibana icon will show.


_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
1. From the Jump Box provisioner start the container with:
  a. sudo docker start elated_yalow
  b. sudo docker attach elated_yalow
2.  SSH into the Elk machine with the following command: ssh azadmin@10.1.0.4
3. Navigate to /etc/ansible and update the hosts file to include the Web1 and Web2 machines as well as the ElkVM1 machine.
4.  Run the ElkConfig YAML file.