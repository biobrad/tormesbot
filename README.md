# tormesbot
Tormesbot was devised to enable greater ease for my colleagues in my lab to run the whole genome sequencing pipeline 'tormes' on a HPC cluster using slurm and modules.

The script makes 1 assumption and has 1 local requirement.

The script makes the assumption that you do not need a password to access your HPC via command line and use a private ssh key with username authentication.

The one requirement of the script is that you have the software PIGZ installed and can call it from the command line so it is required to be in a folder in your $PATH. 
You can compile pigz yourself with the code from here: https://github.com/madler/pigz

PIGZ can also be installed via APT and YUM:
  sudo apt install pigz
  sudo yum install pigz
 
PIGZ is a requirement for the HPC as well. Currently it is required to be 


You are not required to have tormes installed on your local PC to run this script.

The script is designed to run from the same folder as ALL of the files you wish to run through the tormes pipeline on the HPC.
