#!/bin/bash
rm -Rf /opt/nginx/modules/; mkdir -p /opt/nginx/modules/
cd /opt/nginx/modules/
git clone https://github.com/ildus/nginx_redis.git
mv /opt/nginx/modules/nginx_redis/ngx_devel_kit-0.*/ /opt/nginx/modules/ngx_devel_kit
rm -Rf /opt/nginx/modules/nginx_redis

#LuaJIT Library
cd /opt/nginx/modules/
git clone http://luajit.org/git/luajit-2.0.git luajit
cd luajit/
make -j`nproc`
make install
ldconfig

cd /opt/nginx/modules/
git clone https://github.com/openresty/set-misc-nginx-module.git
git clone https://github.com/FRiCKLE/ngx_cache_purge.git
git clone https://github.com/openresty/headers-more-nginx-module.git
git clone https://github.com/leev/ngx_http_geoip2_module.git
git clone https://github.com/openresty/lua-nginx-module.git
git clone https://github.com/arut/nginx-rtmp-module.git
git clone https://github.com/aperezdc/ngx-fancyindex.git
