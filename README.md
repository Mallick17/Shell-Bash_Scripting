# Bash is a default type of shell
Scripts to understand shell and bash scripting.<br>
\bin\bash (exact) ==> For Bash Scritping<br>
/bin/bash (shell) ==> For Shell Scripting<br>
**Note:-** <br>
**Even though if we are using /bin/sh interpretor will execute all the commands in bash shell.**
## Example: Write a shell script to automate the given task
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
**Output** <br>
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

## Functions
**Functions will execute whenever it is called to execute.**
|        Static             |          Dynamic          |
| ---------------------------- | ---------------------- |
| #!/bin/bash<br>echo "******Starts******"<br>mul()<br>{<br>a=100<br>b=20<br>c=2<br>d=$((a*b*c))<br>echo "Mul of $a & $b & $c is $d"<br>echo "******End*****"  |  echo "******Starts******"<br>echo "Enter a value"<br>read a<br>echo "Enter b value"<br>read b<br>echo "Enter C value"<br>read c<br>d=$((a*b*c))<br>echo "Mul of $a & $b & $c is $d"<br>echo "******End*****" |
| #!/bin/bash<br>echo "******Starts******"<br>div()<br>{<br>a=100<br>b=20<br>c=2<br>d=$((a/b/c))<br>echo "div of $a & $b & $c is $d"<br>}<br>div<br>echo "******End*****"| #!/bin/bash<br>echo "******Starts******"<br>echo "Enter a value"<br>read a<br>echo "Enter b value"<br>read b<br>echo "Enter C value"<br>read c<br>d=$((a/b/c))<br>echo "Div of $a & $b & $c is $d"<br>echo "******End*****"  |
## Method with Parameter
To receive the parameter we wil use special variables. In shell/bash script we can pass both variables.
**Static**
```
#!/bin/bash
echo "starts"
echo "the file name: $0"
sum() {
        c=$(($1+$2))
        echo "sum of $1 & $2 is: $c"
}
sum 10 20
echo "end"

echo "starts"
echo "the file name: $0"
sum() {
        c=$(($1+$2))
        echo "sum of $1 & $2 is: $c"
}
a=20
b=40
sum a b
echo "end"
```
*Output*<br>
starts<br>
the file name: methodparameter.sh<br>
sum of 10 & 20 is: 30<br>
end<br>
starts<br>
the file name: methodparameter.sh<br>
sum of a & b is: 60<br>
end<br>
**Dynamic**
```
#!/bin/bash
echo "starts"
echo "the file name: $0"
sum() {
        c=$(($1+$2))
        echo "sum of $1 & $2 is: $c"
}
echo "Enter a value"
read a
echo "Enter b value"
read b
sum a b
echo "end"
```
_Output_
starts<br>
the file name: parameterdynamic.sh<br>
Enter a value<br>
```50```<br>
Enter b value<br>
```40```<br>
sum of a & b is: 90<br>
end
