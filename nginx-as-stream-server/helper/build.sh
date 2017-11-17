./configure \
--user=nginx \
--group=nginx \
--sbin-path=/usr/sbin/nginx           \
--conf-path=/nginx/nginx.conf     \
--pid-path=/var/run/nginx.pid         \
--lock-path=/var/run/nginx.lock       \
--error-log-path=/nginx/logs/error.log \
--http-log-path=/nginx/logs/access.log \
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
--with-stream_ssl_module \
--with-threads \
--with-http_dav_module \
--with-ld-opt="-Wl,-rpath,/usr/local/lib/"