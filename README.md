**This repo provides you with a complete, yet simple environment that consists of a master (CentOS7), as well as a Linux (CentOS7) and Windows VM.**

## Pre-Steps ##

Before cloning this repo, you'll have to install both [Vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Download_Old_Builds_6_0).

Once both are installed, you'll be able to do the following steps from your CLI:

```

**vagrant up each vm separately, wait for the previous vm to load fully before bringing up the next one**

'vagrant up /puppet_master/'

'vagrant up /linux_agent/'

'vagrant up /windows_agent/'

'vagrant hosts list'

**ssh into each box individually**

'vagrant ssh /puppet_master/'
'vagrant ssh /linux_agent/'
'vagrant ssh /windows_agent/'

```
 ****Some useful commands**** 

1. *vagrant halt /vm_name/*
- stops the specified vagrant machine

2. *vagrant destroy /vm_name/*
- stops and deletes all traces of the specified vagrant machine

3. *vagrant status*
- outputs status of the vagrant machines

In order to get into your boxes, you can either ssh in from your command line, or you can use the VirtualBox interface. You can read more on Vagrant commands in their [docs](https://www.vagrantup.com/docs/cli/).

You can also see your console in the browser by going to 'https://192.168.50.4'. This should give you a view of the GUI for continued management of your nodes. 

user:password = admin:puppetlabs
