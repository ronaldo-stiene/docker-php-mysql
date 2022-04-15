# Criar arquivo nginx para projeto

- Crie um arquivo em `nginx/conf`
- Crie uma linha em webserver > volumes: `./nginx/conf/project.conf:/etc/nginx/sites-enabled/project.conf`

Exemplo de arquivo nginx:

```
server {

    listen 80;
    listen [::]:80;
    server_name           project.local;
    client_max_body_size 108M;

    access_log /var/log/nginx/project-access.log;
    error_log /var/log/nginx/project-error.log;

    root /srv/project/public;
    index index.php;

    if (!-e $request_filename) {
        rewrite ^.*$ /index.php last;
    }

    location ~ \.php$ {
        root /srv/project/public;
        fastcgi_pass php:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param PHP_VALUE "error_log=/var/log/nginx/application_php_errors.log";
        fastcgi_buffers 16 16k;
        fastcgi_buffer_size 32k;
        include fastcgi_params;

        fastcgi_param SCRIPT_FILENAME $request_filename;
    }

    location / {
        try_files $uri $uri/ /index.php$is_args$args;
         autoindex off;
        index  index.html index.htm index.php;
    }
    
}
```
