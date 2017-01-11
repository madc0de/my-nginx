#!/bin/bash
#After.
useradd -r nginx
cd /etc/init.d/
wget https://raw.githubusercontent.com/systemroot/nginx-proxy-stats/master/etc/init.d/nginx
chmod +x nginx
cd /etc/nginx/
mkdir conf.d
rm -Rf nginx.conf
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

echo "is done bruh!"
