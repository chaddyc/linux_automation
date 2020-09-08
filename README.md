# linux_automation
Linux Automation scripts to automate certain tasks on a system or accross the network.

# General
Scripts can be found under their respected folders. For example all Python scripts will be in the Python folder and all Bash scripts will be in the bash folder.

# SCRIPTS:

# useradd.sh
Add user to a list to multiple Linux systems.
The useradd.sh script would first ask you to enter the username and the user id of the user who you want to add; then, it will loop over and connect to all the servers in the servers.txt file via SSH and add the requested user.
