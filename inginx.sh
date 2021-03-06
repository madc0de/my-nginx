#!/bin/bash
# Nginx 1.9.7 + * Modules.
# Author RAW. // systemroot.me
##########################

#Before.
apt-get update -y
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install apt-utils build-essential -y
apt-get install git -y
apt-get install checkinstall libpcre3 libpcre3-dev zlib1g zlib1g-dbg libxml2 zlib1g-dev -y
apt-get install -y unzip
apt-get install -y libicu-dev libcurl4-gnutls-dev libtool
apt-get install -y libmozjs-24-dev
apt-get install -y libmozjs-24-bin; sudo ln -sf /usr/bin/js24 /usr/bin/js
apt-get install openssl libssl-dev libperl-dev libexpat-dev -y
apt-get install mercurial meld -y
apt-get install libxslt-dev -y
apt-get install libgd2-xpm -y
apt-get install libgd2-xpm-dev -y
apt-get install libgeoip-dev -y
apt-get install libssl libssl-dev -y
apt-get install dh-autoreconf -y
apt-get install -y software-properties-common
apt-get install -y python-software-properties
apt-get install -y libcairo2 libcairo2-dev
apt-get install -y python-dev
sudo add-apt-repository ppa:maxmind/ppa -y
apt-get install aptitude -y
aptitude update -y
aptitude upgrade -y
aptitude install libmaxminddb0 libmaxminddb-dev mmdb-bin -y

#Dirs!
mkdir -p /nginx
mkdir -p /nginx/sites/
mkdir -p /nginx/logs/
mkdir -p /nginx/cache/
mkdir -p /hostdata/

#Modules.
mkdir -p /opt/nginx/modules/
cd /opt/nginx/modules/
git clone https://github.com/ildus/nginx_redis.git
cd nginx_redis/
mv ngx_devel_kit-0.2.19/ /opt/nginx/modules/

cd /opt/nginx/modules/
rm -Rf nginx_redis/
cd /opt/nginx/modules/
git clone https://github.com/openresty/set-misc-nginx-module.git
git clone https://github.com/vozlt/nginx-module-vts.git
git clone https://github.com/FRiCKLE/ngx_cache_purge.git
git clone https://github.com/kyprizel/testcookie-nginx-module.git
git clone https://github.com/openresty/headers-more-nginx-module.git
git clone https://github.com/openresty/echo-nginx-module.git
git clone https://github.com/arut/nginx-dav-ext-module.git
git clone https://github.com/masterzen/nginx-upload-progress-module.git
git clone https://github.com/nginx-clojure/nginx-access-plus.git
git clone https://github.com/leev/ngx_http_geoip2_module.git
git clone https://github.com/flant/nginx-http-rdns.git
git clone https://github.com/dizballanze/ngx_http_avatars_gen_module.git
git clone https://github.com/openresty/lua-nginx-module.git
wget https://github.com/pagespeed/ngx_pagespeed/archive/v1.12.34.2-beta.zip
unzip v1.12.34.2-beta.zip
rm -Rf v1.12.34.2-beta.zip

#Pagespeed Library
cd /opt/nginx/modules/ngx_pagespeed-1.12.34.2-beta
wget https://dl.google.com/dl/page-speed/psol/1.12.34.2-x64.tar.gz
tar -xzvf 1.12.34.2-x64.tar.gz

#LuaJIT Library
cd /opt/nginx/modules/
git clone http://luajit.org/git/luajit-2.0.git
cd luajit-2.0/
make && sudo make install

#Nginx 1.9.7
mkdir -p /opt/nginx/sources/
cd /opt/nginx/sources/
wget 'http://nginx.org/download/nginx-1.9.7.tar.gz'
tar -xzvf nginx-1.9.7.tar.gz
rm -Rf nginx-1.9.7.tar.gz

#Compile Nginx With Modules.
cd /opt/nginx/sources/nginx-1.9.7/
cat <<EOF > /opt/nginx/sources/nginx-1.9.7/build.sh
./configure \
--user=nginx \
--group=nginx \
--sbin-path=/usr/sbin/nginx           \
--conf-path=/etc/nginx/nginx.conf     \
--pid-path=/var/run/nginx.pid         \
--lock-path=/var/run/nginx.lock       \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-pcre                           \
--with-http_geoip_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_image_filter_module \
--with-http_secure_link_module \
--with-http_sub_module \
--with-http_xslt_module \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_realip_module \
--with-stream \
--with-debug \
--with-stream_ssl_module \
--with-threads \
--with-http_dav_module \
--with-ld-opt="-Wl,-rpath,/usr/local/lib/" \
--add-module=/opt/nginx/modules/ngx_devel_kit-0.2.19 \
--add-module=/opt/nginx/modules/ngx_pagespeed-1.12.34.2-beta \
--add-module=/opt/nginx/modules/testcookie-nginx-module \
--add-module=/opt/nginx/modules/set-misc-nginx-module \
--add-module=/opt/nginx/modules/headers-more-nginx-module \
--add-module=/opt/nginx/modules/echo-nginx-module \
--add-module=/opt/nginx/modules/nginx-access-plus/src/c \
--add-module=/opt/nginx/modules/nginx-dav-ext-module \
--add-module=/opt/nginx/modules/nginx-module-vts \
--add-module=/opt/nginx/modules/ngx_cache_purge \
--add-module=/opt/nginx/modules/ngx_http_geoip2_module \
--add-module=/opt/nginx/modules/ngx_http_avatars_gen_module \
--add-module=/opt/nginx/modules/nginx-http-rdns \
--add-module=/opt/nginx/modules/lua-nginx-module \
--add-module=/opt/nginx/modules/nginx-upload-progress-module
make
make install
EOF

#Starting.
cd /opt/nginx/sources/nginx-1.9.7/
sudo sh build.sh

echo "-------------------------------------"
echo "~///////////////////////////////////~"
#ask to fix it.
read -p "If you want we can fix nginx Are you OK with this? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
   mkdir /tmp
   cd /tmp/; wget https://raw.githubusercontent.com/systemroot/my-nginx/master/fixit.sh; chmod +x fixit.sh
   ./fixit.sh
else
  echo "Ok."
  exit 0
fi
