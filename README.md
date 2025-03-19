## Full deployment steps from scratch
1. Create EC2 instance
1. Upload docker-compose.yml
1. Login to docker to enable pulling images
1. Start docker-compose.yml
1. Setup NGINX 
    `vim /etc/nginx/sites-available/ajsampang`
    ```
    # HTTP (port 80) - Redirects to HTTPS
    server {
        listen 80;
        server_name ajsampang.com;

        # Redirect HTTP to HTTPS
        return 301 https://$host$request_uri;
    }

    # HTTPS (port 443)
    server {
        listen 443 ssl;
        server_name ajsampang.com;

        # SSL Configuration (Make sure your SSL certificates are correct)
        ssl_certificate /etc/letsencrypt/live/ajsampang.com/fullchain.pem;
        ssl_certificate_key /etc/letsencrypt/live/ajsampang.com/privkey.pem;

        # Optional SSL Settings (can be adjusted based on security preferences)
        ssl_protocols TLSv1.2 TLSv1.3;
        ssl_ciphers 'ECDHE-ECDSA-AES128-GCM-SHA256:...';  # Adjust cipher suite if needed
        ssl_prefer_server_ciphers on;

        # Proxy to port 8080
        location / {
            proxy_pass http://localhost:8080;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
        }
    }
    ```
    Enable config:
    `sudo ln -s /etc/nginx/sites-available/ajsampang /etc/nginx/sites-enabled/`
    Restart NGINX:
    `sudo systemctl restart nginx`
1. Add certs with certbot
    ```
    sudo apt install certbot python3-certbot-nginx -y
    sudo certbot --nginx -d ajsampang.com
    ```
1. Setup cron job to refresh cert when necessary
    `sudo crontab -e`
    `0 0 * * * /usr/bin/certbot renew --quiet && systemctl reload nginx`