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

## Development Env

- Install Vagrant
- install nginx
- added a Vagrant file with commands to initialise a VM
- Provided a IP address to the VM to be able to access VM through a web browser
- Install Ruby

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