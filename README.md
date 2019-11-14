# media-center

Docker Configuration for Running a Media Center at Home.

-   [`Configuration`](#configuration)
  - [`Port Forwarding`](#port_forwarding)
-   [`Networking Documentation`](docs/docker_networking.md)
-   [`Container Information`](docs/docker_containers.md)

* * *

* * *

## Configuration

### Port Forwarding

In order to reach the outside wotld, you must forward ports `80` and `443` from your server IP address through your router. See your router's manual for Instructions.

### CloudFlare

This configuration was inspired by, and immensely helped by the article at [`https://smarthomebeginner.com`](https://www.smarthomebeginner.com/traefik-reverse-proxy-tutorial-for-docker). Instructions in this article to set up free [`CloudFlare`](https://dash.cloudflare.com/sign-up) services. The CloudFlare section of the article can be found [`here`](https://www.smarthomebeginner.com/traefik-reverse-proxy-tutorial-for-docker/#Dynamic_DNS_or_Your_Own_Domain_Name).

### Google OAuth 2.0

The Google Oauth 2.0 configuration can be found [`here`](https://www.smarthomebeginner.com/google-oauth-with-traefik-docker/#How_do_I_setup_OAuth). This configuration requires Google Authentication to access any services published on the web.

### DuckDNS

A free DuckDNS dynamic DNS subdomain can be set up [`here`]("https://www.duckdns.org").

### File Configuration

#### `.env`

The [`media-center.yml`](media-center.yml) file can be left alone if the default list of services is acceptable. The [`example.env`](example.env) file can be modified and renamed `.env` in order for the containers to be build properly. All hints live with the file.

#### `traefik.toml`

The [`traefik/config/traefik.toml`](traefik/config/traefik.toml) file needs minimal alteration. To accept the current behavior of apps being placed in a subdomain (ie. <https://app.example.com/>). Only the domain names (currently set as `juftin.com`) need to be changed here to be the same as the .

#### `acme.json`

A blank file named `acme.json` needs to be placed in the the directory `traefik/config/acme` needs to be created and a blank file named `acme.json` must be placed inside. This file needs to have the proper permissions (`600`). This operation can be performed by running:

    mkdir traefik/config/acme && \
      touch traefik/config/acme/acme.json &&
      chmod 600 traefik/config/acme/acme.json

* * *

## Set Up

Most application set up and configuration is straightforward. Please follow the documentation links in the below list of containers for inoformation.

### Containers

The full list of containers can be found at [`docs/docker_containers.md`](docs/docker_containres.md). This list contains a brief explanation of each docker container and important links to the source code, documentation, and more.

### Networking

Networking information can be found at [`docs/docker_networking.md`](docs/docker_networking.md). For ease of use and interconnection between services, all docker containers have been pre-assigned an IP address.

<br/>
<br/>

made with ❤️ by juftin
