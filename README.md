# DevOps Intro
## What is DevOps?
DevOps is a continuous process.
Start with planning the application before developing the code.
The code is stored in a repository where it is updated regularly
This is known as version control
Once the code is completed it is then executable
The code is tested for bugs and errors before being handed to the operations team
The operations deploy the code to a working environment
Continuously monitored and sent back the planning phase to then work on ways
to upgrade and update the software

## Why DevOps?
Big tech giants such as Netflix, Amazon and Facebook have opted for the DevOps approach with many more companies leaning towards automation with the aim of reducing delivery time and the gap between development teams and operations teams which is only achieved by adopting a DevOps model.

1. Greater collaboration and Team Work
Break the silos mindset to bring development and operations teams together, enhances communication in the tech supply chain to assure the best possible outcome.
2. Faster time to market
Due to increase synergy in teams results in a faster development cycle because it cuts the time a code takes to ove from engineering to deployment. DevOps employs automation and standardized tools and processes to increase teams productivity and boost the speed of releases. Not only improves efficiency of DevOps teams but also translates to better ROI for the organisation.
3. Accelerates time to resolution
When netflix employed the DevOps approach they created a tool called the simian army which would continually create bugs in the environment without affecting its users, so that the developers could build a system to prevent such bugs from occuring. 
Teams are able to detect issues quicker and correct them allowing them to spend more time on innovation rather than fixing issues and defects.
4. Optimizes productivity
Automation can simply increase productivity, by spending less time on simple, repeatble tasks and more time on complex issues.
5. Increases cutomer satisfaction
DevOps employs an agile model to offer greter value and high quality software to end users, ensuring customers recieve the best software in the shortest time possible. 
6. Improve business values
DevOps allows businesses to create inderpendant teams whose aim is to offer products and services that meet customer needs. These teams can experiment to produc improved products and services.
7. Benefits for IT professionals
DevOps not only benefits IT departments and organizations but also IT professionals. Employees report higher engagement, increased job satisfaction, and greater access to professional development opportunities.

## 4 Pillars of DevOps
1. Communication 
Teams need to constantly communicate from planning to the release phase, in order to produce better software and improved releases. Teams should be physically together and talk to eachother and learn from eachother. Commnication can be facilitated with tools such as Slack, Trello etc. 
2. Collaboration
Key for the DevOps approach. Helps to deliver a streamlined process teams can have a better understanding of the target infrastructure and be well prepared with the changes in the product required for the changes in the infrastructure and also prepare said infrastructure for furture software releases to avoid delays in releases.
3. Automation
Automation scripts are essential, tools such as PowerShell DSC, Chef and Puppet can be used to automate. 
4. Monitoring
Monitoring is required to provide crucial information to ensure the services are running and are at optimal performance. Important to measure progress of the approach to know whether teams are improving or making progress. With proper data and metrics teams can inspect thier own way of working and come up with new idea or processes to improve overall CI/CD, can always find problem areas adn define focus points to improve. 

## Risks
Fail to define wha DevOps means to your organisation
Focus on tools and techniques and forgetting about people
Ignoring governance 
Fail to account for risks
Run DevOps without metrics

## Software Development Lifecycle (SDLC) and its stages
planning, analysis, design, development, testing, implementation, and maintenance

## What is Dev Env and its benefits
The purpose of a development environment is to have a place for a developer to test anything they want without worrying about it affecting any end-users or content editors working on a live website.

## Development Env

- Install Vagrant
- Install Ruby
- install nginx
- added a Vagrant file with commands to initialise a VM
- Provided a IP address to the VM to be able to access VM through a web browser


**Linux commands**
- `sudo apt-get update -y`
- `sudo apt-get upgrade -y`
- `sudo apt-get install nginx -y`
```
# Creating a virtual machine with Linux Ubuntu 16.04
# ubuntu/xenial64

Vagrant.configure("2") do |config|
 # choose the os/box/distro
 config.vm.box = "ubuntu/xenial64"
 config.vm.network "private_network", ip: "192.168.10.100"
# vagrant destroy
# vagrant up
# vagrant reload
end
```
- Who am I `uname -a`
- Where am I `pwd` 
- List dir or all `ls` or `ls -a`
- Copy file `cp filename destination`
- Cut or rename `mv filename destination`
- Create file `touch filename`
- create folder `mkdir foldername`
- how to navigate `cd foldername` return step back `cd .. `
- deleting file folders `rm -rf namefolder`

**File Permissions**
- Read `r`, Write `w` and `x`
- How to check permissions `ll`
- Change permissions `chmod` permision `r` or `w` or `x` then filename (`chmod permission filename`)

- find out all processes running `top`
- how to `kill` a process, may require `sudo` for admin permission

### Automate everything we have done manually
- provision the steps of updating, upgrading and nginx installation
```
#!/bin/bash

#update, upgrade, install nginx
sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install nginx -y

```

### Pipes and Filters in Linux
The Pipe is a command in Linux that lets you use two or more commands such that output of one command serves as input to the next
For Example:
If you wanted to find a specific word within a file you could run:
`cat sample | grep Apple`
`cat` displays what is inside the file and `grep` reads the file to find the value Apple. 

Here we can read specific lines of a file by running the following commands:
- Display first n lines from file `cat file | head -n` 
- Display last n lines from file `cat file | tail -n`
