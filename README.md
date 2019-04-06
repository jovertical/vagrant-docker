# About Vagrant Docker

It aims to provide a virtual machine that can run multiple applications that run through [docker](https://docker.com/). The machine doesn't care how your dockerized applications are constructed, it just provides a bridge from your _host_ machine to a **linux** virtual machine so that you can use `docker` and `docker-compose`.

---

# Prerequisites

## Install [Vagrant](https://www.vagrantup.com)

It is the main tool to have of course, if you haven't done that yet, head over here: https://www.vagrantup.com/downloads.html. You can verify that the installation is successful by running the `vagrant` command in your terminal.

## Install [Virtual Box](https://www.virtualbox.org/)

This setup uses **Virtual Box** as its _provider_. Again, if you haven't done that yet, you can follow along here: https://www.virtualbox.org/wiki/Downloads. You can verify that the installation is successful by running the `virtualbox` command in your terminal.

## Ensure that Virtualization is enabled in your Host System

If you are using **Windows**, you may need to enable _hardware virtualization (VT-x)_. It can usually be enabled via your _BIOS_. If you are using **Hyper-V** on a _UEFI system_ you may additionally need to disable **Hyper-V** in order to access **VT-x**.

---

# Usage

## First Steps

### Clone the Repository
Begin by cloning this repository onto your host machine. It is better to put this
repository just inside your "home" directory:

`git clone https://github.com/palonponjovertlota/vagrant-docker ~/vagrant-docker`

### Initialize Vagrant Docker
Once you have cloned the _Vagrant Docker_ repository, run the `bash init.sh` command from the `~/vagrant-docker` directory to create the `vagrant-docker.yaml` configuration file. The `vagrant-docker.yaml` file will be placed in the `~/vagrant-docker` directory:

```
# Linux / Mac
bash init.sh

# Windows
init.bat
```

## Turn on the Engines
You should `cd` inside the project: `cd ~/vagrant-docker`. From here, you can then `vagrant up` to boot-up your machines. Make sure to check the `vagrant-docker.yaml` before doing so.

You can check if the machine is up and running: `vagrant status`. If you want to check if your folders are mapped correctly:

```
vagrant ssh

# list the files inside the directory we mapped into.
ls /vagrant/code
```
