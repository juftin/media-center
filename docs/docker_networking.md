# Docker Networking

## networks

### traefik

The `traefik` network is used for docker containers exposed to the outside world. Any container that needs to be proxied through traefik needs to be on this container.  By default, this network is on subnet `192.168.101.0/24`. This subnet can be changed by setting the `TRAEFIK_SUBNET` variable in your `.env` file. The below IP addresses can be used for configuring connections between the services as communication via the published `https` domain is not possible.

-   heimdall
    -   IP Address: `192.168.101.5`
    -   Internal Port: `9000`
    -   Exposed Port: `9000`
-   jackett
    -   IP Address: `192.168.101.11`
    -   Port: `9117`
    -   Exposed Port: `9117`
-   nextcloud
    -   IP Address: `192.168.101.12`
    -   Port: `443`
    -   Exposed Port: `7005`
-   oauth
    -   IP Address: `192.168.101.3`
    -   Port: `4181`
-   ombi
    -   IP Address: `192.168.101.10`
    -   Port: `3579`
    -   Exposed Port: `3579`
-   portainer
    -   IP Address: `192.168.101.4`
    -   Port: `9000`
    -   Exposed Port: `9000`
    -   Exposed Port: `3579`
-   radarr
    -   IP Address: `192.168.101.7`
    -   Port: `7878`
    -   Exposed Port: `7878`
-   sonarr
    -   IP Address: `192.168.101.8`
    -   Port: `8989`
    -   Exposed Port: `8989`
-   tautulli
    -   IP Address: `192.168.101.9`
    -   Port: `8181`
    -   Exposed Port: `8181`
-   traefik
    -   IP Address: `192.168.101.2`
    -   Ports: `80`, `443`, `8080`
    -   Exposed Ports: `80`, `443`, `8080`
-   transmission
    -   IP Address: `192.168.101.6`
    -   Port: `9091`
    -   Exposed Ports: `9091`

### internal

The `internal` network is used for internal communication between backend containers and containers that do not need to be exposed on the `traefik` network. By default, this network is on subnet `192.168.202.0/24`. This subnet can be changed by setting the `INTERNAL_SUBNET` variable in your `.env` file. The below IP addresses can be used for configuring connections between the services.

-   duckdns
    -   IP Address: `192.168.202.8`
-   nextcloud
    -   IP Address: `192.168.202.6`
    -   Port: `443`
    -   Exposed Port: `7005`
-   oauth
    -   IP Address: `192.168.202.3`
    -   Port: `4181`
-   ouroboros
    -   `192.168.202.4`
-   postgres
    -   IP Address: `192.168.202.7`
    -   Port: `5432`
    -   Exposed Port: `5432`
-   traefik
    -   IP Address: `192.168.202.2`
    -   Ports: `80`, `443`, `8080`
    -   Exposed Ports: `80`, `443`, `8080`
-   samba
    -   IP Address: `192.168.202.5`
    -   Ports: `139`, `445`
    -   Exposed Ports: `139`, `445`

### host

Currently, plex is configured to run on the host network as reccomended by @linuxserver.

-   plex
    -   IP Address: `local ip address`
    -   Port: `32400`
