server {
    listen 80;
    server_name idkwheretogo.com www.idkwheretogo.com;

    location / {
        proxy_pass http://wheretogo:5000;
    }
}
