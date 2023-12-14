server {
  server_name test.kunansy.ru;
  listen 80;

  location / {
      proxy_pass http://127.0.0.1:8001/;
  }
}

