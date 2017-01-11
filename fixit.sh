#!/bin/bash
#After.
useradd -r nginx
cd /etc/init.d/
wget https://raw.githubusercontent.com/systemroot/nginx-proxy-stats/master/etc/init.d/nginx
chmod +x nginx
cd /etc/nginx/
mkdir conf.d
mv nginx.conf /etc/nginx/nginx.conf.1.old
wget https://raw.githubusercontent.com/systemroot/nginx-proxy-stats/master/etc/nginx/nginx.conf
cd /hostdata/conf/nginx/sites/
wget https://raw.githubusercontent.com/systemroot/my-nginx/master/hostdata/conf/nginx/sites/dopeinfinity
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
<h1>Personal V. Builded By Me.</h1>
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
