# set up a simple nginx reverse proxy in ubuntu

1. install nginx
    ```bash
    sudo apt update && sudo apt install nginx
    ```
2. add config file to sites-available
    ```
    server {
            listen {port};
            listen {host:port};

            root {public dir};
            index index.html index.htm;

            server_name {domain name};

            location / {
                    try_files $uri $uri/ =404;
            }
            location {/api/v1/} {
                    proxy_pass {target path eg: www.whatever.com/api/};
            }
    }
    ```
3. add soft link
    ```bash
    sudo ln -s /etc/nginx/sites-available/example /etc/nginx/sites-enabled/
    ```
4. restart nginx service
    ```bash
    sudo systemctl restart nginx
    ```

reference:
- [How To Install Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04)
- [How To Set Up Nginx Server Blocks (Virtual Hosts) on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
