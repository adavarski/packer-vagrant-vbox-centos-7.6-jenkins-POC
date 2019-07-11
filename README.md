# Packer CentOS template
Packer templates to bake VirtualBox image (vagrant)

### Purpose
This repository store sample Packer template required to create a Vagrant virtualbox base CentOS 7 x86_64 box using Packer for jenkins slaves

### Requirements
The following software must be installed/present on your local machine before you can use Packer to build the Vagrant box file:

* Packer
* VirtualBox (needed to build the VirtualBox box)

### CentOS Packer Template:

* [template.json](https://github.com/adavarski/packer-vagrant-virtualbox-centos7.6-jenkins-slave/blob/master/template.json)

### Usage
Make sure all the required software is installed, then cd to the directory containing this repo files, and run:

`$ packer build template.json`

After a few minutes, Packer should tell you the box was generated successfully

```
vagrant box add jenkins-slave builds/virtualbox-centos7-minimal.box --force
vagrant up
```
