#!/bin/bash

go='1';
if [ -f ".bashrc" ]
then
    echo "Your local .bashrc already exists. Rename or remove and try again.";
    go='0';
fi
if [ -f ".profile" ]
then
    echo "Your local .profile already exists. Rename or remove and try again.";
    go='0';
fi

if [ '0' == "$go" ]
then
  exit 1;
fi

cp SSH/bashrc .bashrc
cp SSH/profile .profile

echo "Installed. Please run SSHD and use putty or SSH to login."
