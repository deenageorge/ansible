#!/bin/bash

ansible all -i /home/student/playbooks/inventory -m yum_repository -a "name=EX294_RHELA description='RH294A Software' baseurl=http://content.example.com/rhel8.4/x86_64/dvd/AppStream gpgcheck=1 gpgkey=http://content.example.com/rhel8.0/x86_64/dvd/RPM-GPG-KEY-redhat-release enabled=1" -b -u devops

ansible all -i /home/student/playbooks/inventory -m yum_repository -a "name=EX294_RHELB description='RH294B Software' baseurl=http://content.example.com/rhel8.4/x86_64/dvd/BaseOS gpgcheck=1 gpgkey=http://content.example.com/rhel8.0/x86_64/dvd/RPM-GPG-KEY-redhat-release enabled=1" -b -u devops
