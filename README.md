# About Vagrant Docker

It aims to provide a virtual machine that can run multiple applications that run through [docker](https://docker.com/). The machine doesn't care how your dockerized applications are constructed, it just provides a bridge from your _host_ machine to a **linux** virtual machine so that you can use `docker` and `docker-compose`.

---

# Prerequisites

## Install [Vagrant](https://www.vagrantup.com)

It is the main tool to have of course, if you haven't done that yet, head over here: https://www.vagrantup.com/downloads.html. You can verify that the installation is successful by running the `vagrant` command in your terminal.

## Install [Virtual Box](https://www.virtualbox.org/)

This setup uses **Virtual Box** as its _provider_. Again, if you haven't done that yet, you can follow along here: https://www.virtualbox.org/wiki/Downloads. You can verify that the installation is successful by running the `virtualbox` command in your terminal.

## Ensure that Virtualization is enabled in your Host System

If you are using **Windows**, you may need to enable _hardware virtualization (VT-x)_. It can usually be enabled via your _BIOS_. If you are using **Hyper-V** on a _UEFI system_ you may additionally need to disable **Hyper-V** in order to access **VT-x**. (c) [Laravel Homestead](https://laravel.com/docs/5.8/homestead#configuring-homestead).

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

### Re-Inizializing Vagrant Docker
There might be some occasions that you will need to re-initialize **Vagrant Docker**, for example there are some _config files_ that are added. You could initialize again and should receive a prompt if you would like to override the _published files_:

```
cp: overwrite 'vagrant-docker.yaml'? y
cp: overwrite 'aliases'? n
Vagrant Docker Initialized!
```

## Configuring Shared Folders
The `folders` property of the `vagrant-docker.yaml` file lists all of the folders you wish to share with your `Vagrant Docker` environment. As files within these folders are changed, they will be kept in sync between your local machine and the `Vagrant Docker` environment. You may configure as many _shared folders_ as necessary:

```
folders:
  - map: ~/code
    to: /home/vagrant/code
```

## Turn on the Engines
You should `cd` inside the project: `cd ~/vagrant-docker`. From here, you can then `vagrant up` to boot-up your machines. Make sure to check the `vagrant-docker.yaml` before doing so.

You can check if the machine is up and running: `vagrant status`. If you want to check if your folders are mapped correctly:

```
vagrant ssh

# list the files inside the directory we mapped into.
ls /vagrant/code
```

## Command Aliases
For your convenience, many `docker` and `docker-compose` command aliases are included out of the box:

```
#!/usr/bin/env bash

alias dcb='docker-compose build'
alias dcdown='docker-compose down'
alias dce='docker-compose exec'
alias dcl='docker-compose logs'
alias dclf='docker-compose logs -f'
alias dc='docker-compose'
alias dcps='docker-compose ps'
alias dcr='docker-compose run'
alias dcrestart='docker-compose restart'
alias dcrm='docker-compose rm'
alias dcstop='docker-compose stop'
alias dcup='docker-compose up'
alias dcup:dev='docker-compose -f docker-compose.yml -f docker-compose.dev.yml up'
alias dcup:prod='docker-compose -f docker-compose.yml -f docker-compose.prod.yml up'
alias dm='docker-machine'
alias dmls='docker-machine ls'
alias dprune='docker kill $(docker ps -a -q) && docker system prune -f'
alias drit='docker exec -it'
alias drma='docker rm $(docker ps -a -q)'
alias drmai='docker rmi $(docker images -q)'
alias dwipe='docker kill $(docker ps -a -q) && docker system prune -af'
```