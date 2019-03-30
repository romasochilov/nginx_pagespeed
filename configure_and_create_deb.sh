./configure --prefix=/etc/nginx \
            --sbin-path=/usr/sbin/nginx \
#           --add-dynamic-module=/home/ubuntu/incubator-pagespeed-ngx-latest-stable
            --add-module=/home/ubuntu/incubator-pagespeed-ngx-latest-stable
            --modules-path=/usr/lib/nginx/modules \
            --conf-path=/etc/nginx/nginx.conf \
            --error-log-path=/var/log/nginx/error.log \
            --http-log-path=/var/log/nginx/access.log \
            --pid-path=/var/run/nginx.pid \
            --lock-path=/var/run/nginx.lock \
            --user=www-data \
            --group=www-data \
            --build=Ubuntu \
            --http-client-body-temp-path=/var/cache/nginx/client_temp\
            --http-proxy-temp-path=/var/cache/nginx/proxy_temp\
            --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp\
            --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp\
            --http-scgi-temp-path=/var/cache/nginx/scgi_temp\
            --with-openssl=../openssl-1.1.0f \
            --with-openssl-opt=enable-ec_nistp_64_gcc_128 \
            --with-openssl-opt=no-nextprotoneg \
            --with-openssl-opt=no-weak-ssl-ciphers \
            --with-openssl-opt=no-ssl3 \
            --with-pcre=../pcre-8.40 \
            --with-pcre-jit \
            --with-zlib=../zlib-1.2.11 \
            --with-compat \
            --with-file-aio \
            --with-threads \
            --with-ngx_http_ssl_module \
            --with-http_addition_module \
            --with-http_auth_request_module \
            --with-http_dav_module \
            --with-http_flv_module \
            --with-http_gunzip_module \
            --with-http_gzip_static_module \
            --with-http_mp4_module \
            --with-http_random_index_module \
            --with-http_realip_module \
            --with-http_slice_module \
            --with-http_ssl_module \
            --with-http_sub_module \
            --with-http_stub_status_module \
            --with-http_v2_module \ 
            --with-http_secure_link_module \
            --with-mail \
            --with-mail_ssl_module \
            --with-stream \
            --with-stream_realip_module \
            --with-stream_ssl_module \
            --with-stream_ssl_preread_module \
            --with-debug \
            --with-cc-opt='-g -O2 -fPIE -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2' \
            --with-ld-opt='-Wl,-Bsymbolic-functions -fPIE -pie -Wl,-z,relro -Wl,-z,now'

make
sudo apt-get update && apt-get install checkinstall
sudo checkinstall
