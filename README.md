# media-center

Docker Configuration for Running a Media Center at Home.

-   [Configuration](#configuration)
    -   [Port Forwarding](#port-forwarding)
    -   [CloudFlare](#cloudflare)
    -   [Google OAuth 2.0](#google-oauth-20)
    -   [DuckDNS](#duckdns)
    -   [File Configuration](#file-configuration)
        -   [.env](#env)
        -   [traefik.toml](#traefiktoml)
        -   [acme.json](#acmejson)
-   [Set Up](#set-up)
    -   [Containers](#containers)
    -   [Networking](#networking)


-   Additional Links
    -   [Networking Documentation](docs/docker_networking.md)
    -   [Container Information](docs/docker_containers.md)

* * *

* * *

## Configuration

### Port Forwarding

In order to reach the outside world, you must forward ports 
`80` and `443` from your server IP address through your router. 
See your router's manual for Instructions.

### CloudFlare

This configuration was inspired by, and 
immensely helped by the article at 
[https://smarthomebeginner.com](https://www.smarthomebeginner.com/traefik-2-docker-tutorial). 
Instructions in this article to set up 
free [CloudFlare](https://dash.cloudflare.com/sign-up) services. 
The CloudFlare section of the article can be found 
[here](https://www.smarthomebeginner.com/traefik-reverse-proxy-tutorial-for-docker/#Dynamic_DNS_or_Your_Own_Domain_Name).

### Google OAuth 2.0

The Google Oauth 2.0 configuration can be found [here](https://www.smarthomebeginner.com/google-oauth-with-traefik-docker/#How_do_I_setup_OAuth). This configuration requires Google Authentication to access any services published on the web.

### DuckDNS

A free DuckDNS dynamic DNS subdomain can be set up [here](https://www.duckdns.org).

### File Configuration

#### `.env`

The [`media-center.yml`](media-center.yml) file can be left alone if the default list of services 
is acceptable. The [`example.env`](example.env) file can be modified and renamed `.env` in order 
for the containers to be build properly. This is the entire configuration file for
all applications. All relevant hints can be found within.

#### `acme.json`

You will need to create an empty [acme.json](traefik/acme/acme.json) file for the
application to work and geerate an SSL Certificate through LetsEncrypt. 
However, while initially setting up it will be useful to remove and recreate the file to force
certificate recreation. Keep in mind that certificate creation and registration can take some tie.
uncomment the `certificatesResolvers.dns-cloudflare.acme.caServer=https://acme-staging-v02.api.letsencrypt.org/directory` 
command on the traefik service in the [docker-compose](media-center-v2.yml) file while testing. 
The instructions are below:

  - file location: [`traefik/config/acme/acme.json`](traefik/acme/acme.json)
  - file permissions (chmod): `600`

```shell script
mkdir -p traefik/acme/ && \
  rm -f traefik/acme/acme.json && \
  touch traefik/acme/acme.json && \
  chmod 600 traefik/acme/acme.json
```

* * *

* * *

## Set Up

Most application set up and configuration is straightforward. 
Please follow the documentation links in the below list 
of containers for more information.

### [Containers](docs/CONTAINERS.md)

The full list of containers can be found [here](docs/CONTAINERS.md). This list contains a brief explanation of each docker container and important links to the source code, documentation, and more.

<br/>
<br/>
<br/>

###### Cool stuff happens in Denver, CO [<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Flag_of_Denver%2C_Colorado.svg/800px-Flag_of_Denver%2C_Colorado.svg.png" width="25" alt="Denver">](https://denver-devs.slack.com/)