# Shell-Bash_Scripting
Scripts to understand shell and bash scripting.
**Bash is a default type of shell**.<br>
\bin\bash (exact) ==> For Bash Scritping<br>
/bin/bash (shell) ==> For Shell Scripting<br>
**Note:-**
Even though if we are using /bin/sh interpretor will execute all the commands in bash shell
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
