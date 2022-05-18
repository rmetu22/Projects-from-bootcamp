# Projects-from-bootcamp
Class projects for cybersecurity bootcamp
## Automated ELK Stack Deployment – (Project-VM)
The files in this repository were used to configure the network depicted below.
Diagrams/3-20 Cloud Security Homework 12.png:
![Proj2Network Diag io](https://user-images.githubusercontent.com/102110989/168937426-5d822985-e89f-4106-acf9-5db529e9d8d1.png)


 

These files have been tested and used to generate a live ELK deployment on Azure. 
They can be used to either recreate the entire deployment pictured above. 
Alternatively, select portions of the Project-VM file may be used to install only certain pieces of it, such as Filebeat.

 
This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly functional, in addition to restricting high traffic to the network.
What aspect of security do load balancers protect?
•	Load balancer helps to monitor overloading of traffic on servers, optimizes server’s productivity, and ensure that server is up and running most of the time. 
•	It adds resilience by re-routing life traffic from a given server to another, thereby preventing a single point of failure resulting from DDOs attacks, etc. 
What is the advantage of a jump box?
•	Jumpbox are highly secure
•	They are not used for administrative thereby making them very secured.
•	They have the ability to prevent hackers and malware attacks/infections
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the Network and system log.
- What does Filebeat watch for?
•	Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
-  What does Metricbeat record? 
•	Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as: Apache.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator] (http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

Name	Function	Ip Address	Operating System
Jumpbox-Provisioner	Gateway	Public 20.119.63.1
Private: 10.0.0.4	Linux
Project-VM	Server	Public 40.122.186.224
Private: 10.1.0.4	Linux
VM-1	Server	Public 20.115.104.166
Private: 10.0.0.10	Linus
VM-2	Server	Public 20.115.104.166
Private: 10.0.0.8	Linus

### Access Policies

The machines on the internal network are not exposed to the public Internet. 
Only the Jumpbox Provisioner machine can accept connections from the Internet. 
Access to this machine is only allowed from the following IP addresses: 47.146.94.162 (LocalHost IP address)

Machines within the network can only be accessed by public Internet.
- Which machine did you allow to access your ELK VM? Jumpbox-Provisioner.
What was its IP address? 20.119.63.1 (10.1.0.4 private).
A summary of the access policies in place can be found in the table below.



Name	Publicly Accessible	Allowed IP Address
Jumpbox-Provisioner	Yes	10.0.0.4
Project-VM	No
	10.1.0.4
VM-1	No	10.0.0.10
VM-2	NO	10.0.0.8

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible?
•	No special coding skills are needed to use Ansible’s playbook due to its use of YAML.
•	Powerful – helps to model complex IT workflows.
•	Flexible, you can orchestrate the entire application environment no matter where it’s deployed.



The playbook implements the following tasks:
- In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc.
•	Step 1: SSh into my jumpbox:  ssh azadmin@20.119.63.1
•	Step 2: I Attached Ansible Docker
•	Step 3: Create elk playbook for my Project-VM (using /etc/ansible/roles (Elk_Playbook.yml)
•	Step 4: Ran my playbook: Elk_Playbook.yml
•	Finally, I ssh into project-VM to ensure the server is running.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
![docker_ps_output](https://user-images.githubusercontent.com/102110989/168937293-cc054e65-f36b-44cb-9e94-c5664f0629ee.PNG)

Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
List the IP addresses of the machines you are monitoring
•	VM-1: 10.0.0.10
•	VM-2: 10.0.0.8

We have installed the following Beats on these machines:
Specify which Beats you successfully installed
•	Filebeat Module status screenshot (Attach)

 
•	Metricbeat Module status screenshot (Attach)

These Beats allow us to collect the following information from each machine:
In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc.

•	Filebeat is one of the kinds of data collected. Filebeat is used to collect log files from any specified remote server/s. example are those beat generated by Apache, Microsoft Azureand  mySQL databases.
•	The other category is the metricbeats, which collects the metric data on servers. Metric generated her is used by measures the health and functionality of the servers and how they are running. One example is the CPU usage, another could be CPU resource allocation metric.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 
SSH into the control node and follow the steps below:
- Copy the metricbeat-configuration.yml file to /etc/ansible/roles/file.
- Update the metricbeat-configuration.yml file to includeProject-1 private ip (10.1.0.4) address.  
- Run the playbook, and navigate to http://20.119.63.1 (project-VM) to check that the installation worked as expected.

Answer the following questions to fill in the blanks:
- Which file is the playbook?  Filebeat-playbook.yml.  
- Where do you copy it? /etc/ansible/roles
- Which file do you update to make Ansible run the playbook on a specific machine? /etc/ansible/hosts 
- How do I specify which machine to install the ELK server on versus which to install Filebeat on?
   I specified two separate groups in the /etc/ansible/hosts file. I used one for the webservers with the ip address of the VMs where I installed my filebeats.
   
- Which URL do you navigate to in order to check that the ELK server is running? http://20.119.63.1

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
