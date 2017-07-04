## Compile Nginx 1.9.9 From Source On Ubuntu 14.04

Tutorial Part 1 Compile Nginx and modules => : https://systemroot.co/compile-nginx-1-9-9-from-source-on-ubuntu-14-04/
Tutorial Part 2 Install php5.6-fpm => : https://systemroot.co/install-and-configure-php5-6-fpm-with-nginx-1-9-9-2/


# Modules

```
 https://github.com/openresty/set-misc-nginx-module.git
 https://github.com/vozlt/nginx-module-vts.git
 https://github.com/FRiCKLE/ngx_cache_purge.git
 https://github.com/kyprizel/testcookie-nginx-module.git
 https://github.com/openresty/headers-more-nginx-module.git
 https://github.com/openresty/echo-nginx-module.git
 https://github.com/arut/nginx-dav-ext-module.git
 https://github.com/masterzen/nginx-upload-progress-module.git
 https://github.com/nginx-clojure/nginx-access-plus.git
 https://github.com/leev/ngx_http_geoip2_module.git
 https://github.com/flant/nginx-http-rdns.git
 https://github.com/dizballanze/ngx_http_avatars_gen_module.git
 https://github.com/openresty/lua-nginx-module.git
 https://github.com/pagespeed/ngx_pagespeed/archive/v1.12.34.2-beta.zip
 
 [NEW]
 https://github.com/arut/nginx-mysql-module.git
 https://github.com/arut/nginx-mtask-module.git
 https://github.com/SpiderLabs/ModSecurity-nginx.git
```

# Library

```
 x Pagespeed by google https://dl.google.com/dl/page-speed/psol/1.12.34.2-x64.tar.gz
 x Lua http://luajit.org/git/luajit-2.0.git
 ```
# Nginx Version

```
1.9.9 http://nginx.org/download/nginx-1.9.9.tar.gz
```
# Info

I Use **/hostdata** Directory to host my websites.

And nginx.conf is on the same old place **/etc/nginx/nginx.conf**

Website Vhosts are placed on **/nginx/sites/**

Nginx will use "www-data" user and is auto mode for usage of cpu/s.

