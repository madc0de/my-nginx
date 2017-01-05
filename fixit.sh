#!/bin/bash
#After.
useradd -r nginx
cd /etc/init.d/
wget https://raw.githubusercontent.com/systemroot/nginx-proxy-stats/master/etc/init.d/nginx
chmod +x nginx
cd /etc/nginx/
mkdir conf.d
mkdir sites-enabled
mkdir sites-available
mv nginx.conf /etc/nginx/nginx.conf.1.old
wget https://raw.githubusercontent.com/systemroot/nginx-proxy-stats/master/etc/nginx/nginx.conf
cd /etc/nginx/sites-enabled/
wget https://raw.githubusercontent.com/systemroot/nginx-proxy-stats/master/etc/nginx/sites-enabled/default
wget https://raw.githubusercontent.com/systemroot/nginx-proxy-stats/master/etc/nginx/sites-enabled/test1
mkdir -p /usr/share/nginx/html
cat <<EOF > /usr/share/nginx/html/index.html

<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx, Builded By The Raw!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For Help Create One Issue On Github
<a href="https://github.com/systemroot/obb-core/issues" target="_blank">OBB-CORE</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
EOF


echo "---------------------------------------------------------------------------"
echo "~/////////////////////////////////////////////////////////////////////////~"
echo "~/////////////////////////////////////////////////////////////////////////~"
echo "nginx.conf is at /etc/nginx/nginx.conf"
echo "You can Start/restart/stop nginx with 'service nginx *'"
echo "Als you can use 'nginx -t' to check if all is ok.!"
echo "If you have any suggestion for a module or whatever please suggest it at Issue On github."
echo "~/////////////////////////////////////////////////////////////////////////~"
echo "~/////////////////////////////////////////////////////////////////////////~"
echo "~/////////////////////////////////////////////////////////////////////////~"
