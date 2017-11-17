#!/bin/bash
rm -Rf /opt/nginx/modules/; mkdir -p /opt/nginx/modules/
cd /opt/nginx/modules/
git clone https://github.com/ildus/nginx_redis.git
mv /opt/nginx/modules/nginx_redis/ngx_devel_kit-0.*/ /opt/nginx/modules/ngx_devel_kit
rm -Rf /opt/nginx/modules/nginx_redis
cd /opt/nginx/modules/
wget https://github.com/pagespeed/ngx_pagespeed/archive/v1.12.34.2-beta.zip
unzip v1.12.34.2-beta.zip; rm -Rf v1.12.34.2-beta.zip
mv /opt/nginx/modules/ngx_pagespeed-1.12.34.2-beta /opt/nginx/modules/ngx_pagespeed
#Pagespeed Library
cd /opt/nginx/modules/ngx_pagespeed
wget https://dl.google.com/dl/page-speed/psol/1.12.34.2-x64.tar.gz
tar -xzvf 1.12.34.2-x64.tar.gz; rm -Rf 1.12.34.2-x64.tar.gz

#LuaJIT Library
cd /opt/nginx/modules/
git clone http://luajit.org/git/luajit-2.0.git luajit
cd luajit/
make -j`nproc`
make install
ldconfig

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
git clone https://github.com/arut/nginx-mtask-module.git
git clone https://github.com/arut/nginx-mysql-module.git
git clone https://github.com/openresty/encrypted-session-nginx-module.git
git clone https://github.com/Qihoo360/ngx_http_subrange_module.git
git clone https://github.com/arut/nginx-rtmp-module.git
git clone https://github.com/aperezdc/ngx-fancyindex.git
