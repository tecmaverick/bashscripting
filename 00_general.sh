#!/bin/bash

# view all built in commands
man builtin
compgen -b

#View if a specific command is builtin or not
command -v cd
type cd
type -a cd

# builtin command for editing long commands entered into a shell and re-executing them without having to rewrite the entire command.
fc

#Redirect output
ls >> output.txt

#Load resource file after changes
source ~/.bashrc

#Create alias
alias ..='cd ..’

