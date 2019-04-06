# About Vagrant Docker

It aims to provide a virtual machine that can run multiple applications that run through [docker](https://docker.com/). The machine does not care how the dockerized application is setup, it just provides **docker** and **docker-compose** on top of a base **ubuntu box**.

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

### Turn on the Engines
You should `cd` inside the project: `cd ~/vagrant-docker`. From here, you can then `vagrant up` to boot-up your machines. Make sure to check the `Vagrantfile` before doing so.