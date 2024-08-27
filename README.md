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
_Output_<br>
starts<br>
the file name: parameterdynamic.sh<br>
Enter a value<br>
```50```<br>
Enter b value<br>
```40```<br>
sum of a & b is: 90<br>
end
# Conditions
## If condition
**Static**
```
#!/bin/bash
echo "start"
a=20
b=30
if [[ $a -lt $b ]]
then
        echo "$a is lesser then $b"
fi
echo "end"
```
*Output*<br>
start<br>
20 is lesser then 30<br>
end<br>
<br>
**Dynamic**
```
#!/bin/bash
echo "start"
echo "Enter a value"
read a
echo "Enter b value"
read b
if [[ $a -lt $b ]]
then
        echo "$a is lesser then $b"
fi
echo "end"
```
*Output*<br>
start<br>
Enter a value<br>
```20```<br>
Enter b value<br>
```30```<br>
20 is lesser then 30<br>
end
## if else condition
**Dynamic**
```
#!/bin/bash
echo "start"
echo "Enter a value"
read a
echo "Enter b value"
read b
if [[ $a -lt $b ]]
then
        echo "$a is lesser than $b"
else
        echo "$a is greater than $b"
fi
echo "end"
```
*Output*<br>
start<br>
Enter a value<br>
```20```<br>
Enter b value<br>
```60```<br>
20 is lesser than 60<br>
end<br>

## else if condition
**Dynamic**
```
#!/bin/bash
echo "start"
echo "Enter a value"
read a
echo "Enter b value"
read b
if [[ $a -lt $b ]]
then
        echo "$a is lesser than $b"
elif [[ $a -gt $b ]]
then
        echo "$a is greater than $b"
else
        echo "$a is equals to $b"
fi
echo "end"
```
*Output*<br>
start<br>
Enter a value<br>
```50```<br>
Enter b value<br>
```50```<br>
50 is equals to 50<br>
end
# Looping Statements
## for loop
```
#!/bin/bash
echo "start"
for i in {1..10}
do
  echo "enter: $i"
done
echo "end"
```
*output*<br>
start<br>
enter: 1<br>
enter: 2<br>
enter: 3<br>
enter: 4<br>
enter: 5<br>
enter: 6<br>
enter: 7<br>
enter: 8<br>
enter: 9<br>
enter: 10<br>
end<br>

## while loop
```
#!/bin/bash
echo "start"
init=1
while [[ $init -le 10 ]]
do
  echo "the value: $init"
  ((init++))
done
echo "end"
```
*output*<br>
start<br>
the value: 1<br>
the value: 2<br>
the value: 3<br>
the value: 4<br>
the value: 5<br>
the value: 6<br>
the value: 7<br>
the value: 8<br>
the value: 9<br>
the value: 10<br>
end
# Scripts
### Write A Script(WAS) to execute multiplication tables
```
#!/bin/bash
echo "start"
echo "Enter value"
read num
for i in {1..10}
do
        echo "$num * $i = $((num*i))"
done
echo "end"
```
*Output*<br>
start<br>
Enter value<br>
```8```<br>
8 * 1 = 8<br>
8 * 2 = 16<br>
8 * 3 = 24<br>
8 * 4 = 32<br>
8 * 5 = 40<br>
8 * 6 = 48<br>
8 * 7 = 56<br>
8 * 8 = 64<br>
8 * 9 = 72<br>
8 * 10 = 80<br>
end

### Write A Script(WAS) to find files
```
#!/bin/bash
if [[ -f ./forloop.sh ]]
then
        echo "the file exists"
else
        echo "the file doesnt exist"
fi
echo "end"
```
*Output*<br>
the file exists<br>
end<br>

### Write A Script(WAS) to check directories
```
#!/bin/bash
if [[ -d ./sprint ]]
then
        echo "the directory exists"
else
        echo "the dir doesnt exist"
fi
echo "end"
```
*Output*<br>
the dir doesnt exist<br>
end<br>

### Write A Script(WAS) to check the services weather GIT is installed.
```
#!/bin/bash
echo "Start"
if command -v git
then
        echo "Git is installed"
else
        echo "Git is not installed"
fi
echo "end"
```
*Output*<br>
Start<br>
Git is not installed<br>
end<br>
### Write A Script(WAS) to display all the files in the current directory.
```
#!/bin/bash
echo "start"
for i in *
do
  echo "$i"
done
echo "end"
```
*Output*<br>
start<br>
elseif.sh<br>
finddir.sh<br>
findfiles.sh<br>
forloop.sh<br>
if1.sh<br>
ifdynamic.sh<br>
tables.sh<br>
while.sh<br>
end<br>
### Write A Script(WAS) to display the files with specific extensions.
```
#!/bin/bash
echo "start"
for i in *".sh"
do
  echo "$i"
done
echo "end"
```
*Output*<br>
start<br>
elseif.sh<br>
finddir.sh<br>
findfiles.sh<br>
forloop.sh<br>
tables.sh<br>
while.sh<br>
end<br>
### Write A Script(WAS) to fetch files from given path (.conf)
```
#!/bin/bash
#cd etc/
echo "start"
for i in /etc/* .conf
do
  echo "$i"
done
echo "end"
```
*Output*<br>
start<br>
/etc/acpi<br>
/etc/adjtime<br>
/etc/aliases<br>
/etc/aliases.db<br>
/etc/alternatives<br>
/etc/amazon<br>
/etc/bash_completion.d<br>
/etc/bashrc<br>
/etc/binfmt.d<br>
.conf<br>
end
### Write A Script(WAS) to count the files
```
#!/bin/bash
echo "start"
count=1
for i in /etc/* .conf
do
  echo "$i"
  ((count++))
done
echo "the total count is: $count"
echo "end"
```
*Output*
start<br>
/etc/acpi<br>
/etc/adjtime<br>
/etc/aliases<br>
/etc/aliases.db<br>
/etc/alternatives<br>
/etc/amazon<br>
/etc/yum.repos.d<br>
.conf<br>
the total count is: 191<br>
end<br>

### Write A Script(WAS) to copy files from one directory to another directory.
```
#!/bin/bash
echo "start"
src=/etc/*.conf
dest=/root/demo
for i in $src
do
        cp $src $dest
done
echo "end"
```
*Output*<br>
start<br>
end<br>

### Write A Script(WAS) to move from one directory to other directory
```
#!/bin/bash
echo "start"
src=/root/demomv
dest=/root/demo
for i in $src
do
        mv $src $dest
done
echo "end"
```
*Output*<br>
start<br>
end<br>

### Write A Script(WAS) to move the files from one directory to other directory
```






