# Nginx + Php5.6 As Root!.

Building a webapp which needs root access in servers? This is the best way to go. 
Here is no needed doing alot of stuff to get right permissons to execute your commands.
You can run nginx as root and you will have full asccess as you've login in ssh!
If want to execute remote commands in other servers then you can just add your ssh key public key and so you can 
login with no password and executing commands

1. Generate a public key where nginx is installed. 
  ```ssh-keygen -t rsa``` *(Hit enter don't wrote a password)*
  Your SSH Public key is at ```/root/.ssh/id_rsa.pub```
  
2. Add your public ssh key to remote host,

  ```cat /root/.ssh/id_rsa.pub | ssh user@remoteServer 'cat >> .ssh/authorized_keys'```
  
3. Now do a test with nginx
```
<?php
echo exec('ssh root@kvm.dopehosting.net << EOF
  mkdir -p /tmp/test/
  echo "It Works!" > /tmp/test/TEST.txt
EOF');
?>

```

```
root@kvm:~# cat /tmp/test/TEST.txt 
It Works!
root@kvm:~# 
```

Please remember that using nginx/php as root allows you to have full access in your server from php. 
You should go in this way if you're building something which is for personal use.

Or if you're building a script for public usage means having users/clients etc you should be careful with $POST
if you decide to create a script which have a form and POST data to ex ```remote_exec.php``` and remote_exec.php get arg and 
executes them directly in server(s) please be careful a script like that can be executed directly by just /remote_exec.php?id=1&exec=whoami
So in this case you should be careful, set up scripts who check that (id=1 means user with id 1) user with id 1 exist in your panel
and that user is allowed to execute that command. Also you should limit those $POST as this is a way to execute commands directly 
at your servers remotely some will be executed in one secound some for 1-5 minutes thats based on what you execute
I think the best way to go is by setting up a bash script which get args and do the work which you want, i mean you can do 
everything with bash scripts (update/insert/delete from mysql) . or even better execute commands in backgound.


**More examples and tutorial how to install coming next days.**
