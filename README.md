# Bash is a default type of shell
Scripts to understand shell and bash scripting.<br>
\bin\bash (exact) ==> For Bash Scritping<br>
/bin/bash (shell) ==> For Shell Scripting<br>
**Note:-** <br>
**Even though if we are using /bin/sh interpretor will execute all the commands in bash shell.**
#### Example: Write a shell script to automate the given task
1.Create Directory<br>
2.To know the list of the contents<br>
3.Create a File<br>
4.To know the rest of the content.<br>
5.To know about the present working directory.<br>
6.To know about tthe user login<br>
7.To know the server load and time.
```sh
#!/bin/bash
mkdir demo
ls
touch demo.txt
ls
pwd
whoami
uptime
```
**Output**<br>
automate.sh  demo<br>
automate.sh  demo  demo.txt<br>
/root<br>
root<br>
09:27:32 up 2 min,  1 user,  load average: 0.03, 0.05, 0.02

# Variables
  **Variables are the named memory location which is used.** <br>
  **1. Environment Variables**<br>
  **2. System Variables**<br>
  **3. User-Defined Variables**<br>

## Environment Variables
  **These are the special variables that holds information about system environment.** <br>
```sh
#!bin/bash
echo " *-*-*Script Starts*-*-* "
echo $HOME
echo $USER
echo $PATH
echo $PWD
echo $SHELL
echo $TERM
echo " *-*-*Script Ends*-*-* "
```
**Output**<br>
 *-*-*Script Starts*-*-*<br>
/root<br>
root<br>
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin<br>
/root<br>
/bin/bash<br>
xterm<br>
 *-*-*Script Ends*-*-*
## System Variables
**These are the subset of environment variables that provides the information about system configuration.** <br>
```sh
#!bin/bash
echo " *-*-*Script Starts*-*-* "
echo $HOSTNAME
echo $OSTYPE
echo $MACHTYPE
echo $UID
echo $LOGNAME
echo " *-*-*Script Ends*-*-* "
```
**Output**<br>
 *-*-*Script Starts*-*-*<br>
shellbash<br>
linux-gnu<br>
x86_64-koji-linux-gnu<br>
0<br>
root<br>
 *-*-*Script Ends*-*-*
## User-Defined Variables
**1. Static User-Defined Model to print the given data inside the script.**
```sh
#!/bin/bash
echo "Start Point"
mobilecost=15,699/-
modelname=POCO_M4
mobilecolor=Blue
echo "The mobile model is $modelname ."
echo "The cost of the phone is $mobilecost ."
echo "The color of my phone is $mobilecolor ."
echo "End Point"
```
**Output**<br>
Start Point<br>
The mobile model is POCO_M4 .<br>
The cost of the phone is 15,699/- .<br>
The color of my phone is Blue .<br>
End Point<br>
**2. Static User-Defined Model to print the given data outside the script.**
```sh
#!/bin/bash
echo "Start Point"
echo "Enter Mobile Cost"
read mobilecost
echo "Enter Model Name"
read modelname
echo "Enter Mobile Color"
read mobilecolor
echo "The mobile model is $modelname"
echo "The cost of the phone is $mobilecost"
echo "The color of my phone is $mobilecolor"
echo "End Point"
```
**Output**
Start Point<br>
Enter Mobile Cost<br>
```14,599/-```<br>
Enter Model Name<br>
```POCO_M4```<br>
Enter Mobile Color<br>
```Blue```<br>
The mobile model is POCO_M4<br>
The cost of the phone is 14,599/-<br>
The color of my phone is Blue<br>
End Point<br>
**Note:** <br>
**1. Single Quotes wont allow the outisde data.**<br>
**2. Double Quotes will allow the outside data.**


