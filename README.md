# Installation.

Supported And Tested On : Ubuntu 14.04

1. **`$ apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get install wget -y`**

2. **`$ wget https://raw.githubusercontent.com/systemroot/my-nginx/master/inginx.sh; chmod +x inginx.sh`**

3. **`$ ./inginx.sh`**

At the end of installation you will be asked from script to fix nginx bin, wrote Y and hit enter if you don't know how to fix it.

Or n and hit enter if you know what are u doing.

OR

Compile And install with php5.6-fpm.

**`$ curl -s -LA "Raws InS" "http://bit.ly/2oflwVi" | bash -s INSTALL`**

**`$ raws inginx`**

# [NEW] Compile Nginx 1.9.9

Tutorial : http://systemroot.me/compile-nginx-1-9-9-from-source-on-ubuntu-14-04/

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
 https://github.com/arut/nginx-rtmp-module.git
 https://github.com/pagespeed/ngx_pagespeed/archive/v1.12.34.2-beta.zip
```

# Library

```
 x Pagespeed by google https://dl.google.com/dl/page-speed/psol/1.12.34.2-x64.tar.gz
 x Lua http://luajit.org/git/luajit-2.0.git
 ```
# Nginx Version

```
1.9.7 http://nginx.org/download/nginx-1.9.7.tar.gz
```
# Info

I Use **/hostdata** Directory to host my websites.

And nginx.conf is on the same old place **/etc/nginx/**

Website Vhosts are placed on **/nginx/sites/**

Nginx will use "www-data" user and is auto mode for usage of cpu.


# Examples. 

Will be placed => https://github.com/systemroot/my-nginx/tree/master/example

# Support & Suggestion.

You can post on issues tab if you have any problem, remember i gave support for installation script for modules etc you need to go and ask for support in their repo's.

Suggestion, You can do any suggestion from issues or by pull requests.

# Credits.

Script Created By 𝓣𝓱𝒆 ℛ𝓪𝔀.

# Why?

My main idea to create this project is "Security" i pay a low price for some dedicated servers, but they doesn't have a anti-DDoS Firewall.
But i have a VPS from ovh which ovh have the most powerful firewall and i've install "My-Nginx" on it to use as a proxy and forwarding domains.
So there's how this go,

**`"Unprotected server, Big data hosted" => OVH FIREWALL "My-Nginx" => World.`**

**`My-domain.com, Pointed to => OVH VPS IP "My-Nginx", My nginx forwards it to => "Unprotected server, Big data hosted"`**

So no one is able to find unprotected server ip or to know what i'm doing.
