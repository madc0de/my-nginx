# Nginx As Firewall!

Installation. 

How to : **`Blog tutorial coming soon...`**


# Info.

**Nginx Path =>** **`/nginx/`**

**Virtualhosts Path =>** **`/nginx/live`**

For this i've change virtualhosts folder location and other stuff, so '`raws nhost example.com`' which creates a virtualhost config file for nginx will not work.


# Try the beta.

**`wget https://raw.githubusercontent.com/systemroot/my-nginx/master/nginx-as-firewall/setup`**

**`chmod +x setup`**

**`./setup install`**

Next steps? Follow outputs. you will end up with nginx + php5.6 installed.

# cCheck it out on docker..

Already installed Nginx 1.9.9, PHP FPM 5.6 And modules..

*(ports needed `22` & `80`)*

**`docker pull theraw/naf`**

**ROOT PASSWD: `admin`**
