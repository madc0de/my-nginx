#!/bin/bash
#After.
useradd -r nginx
rm -Rf /etc/init.d/nginx
cd /etc/init.d/
wget https://raw.githubusercontent.com/systemroot/my-nginx/master/etc/init.d/nginx
chmod +x nginx
mkdir -p /etc/nginx/
cd /etc/nginx/
mkdir conf.d
rm -Rf nginx.conf*
wget https://raw.githubusercontent.com/systemroot/my-nginx/master/etc/nginx/nginx.conf
mkdir -p /nginx/sites/
cd /nginx/sites/
wget https://raw.githubusercontent.com/systemroot/my-nginx/master/nginx/sites/default
mkdir -p /usr/share/nginx/html
mkdir -p /hostdata/default
cd /hostdata/default
wget https://raw.githubusercontent.com/systemroot/my-nginx/master/hostdata/default/index.html
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
