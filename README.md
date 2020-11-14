<img align="center" width="250" height="250" src="docs/static/juftin.png" alt="juftin logo">
<img align="center" src="docs/static/media-center-logo.png" alt="media-center">


Home media server docker-compose project built on Docker.  It's a docker-compose project built
around Plex, including schedulers/orchestrators for TV / Movie downloads, 
an always behind VPN torrenting webserver, and a site for users to request new downloads. 
SSL and a GoogleOAuth whitelist are built in as well.


-   [Configuration](#configuration)
    -   [Port Forwarding](#port-forwarding)
    -   [CloudFlare](#cloudflare)
    -   [Google OAuth 2.0](#google-oauth-20)
    -   [DuckDNS](#duckdns)
    -   [File Configuration](#file-configuration)
        -   [.env](#env)
        -   [acme.json](#acmejson)
    -   [Application Setup + Container Info](#application-setup--container-info)

* * *

* * *

## Configuration

### Port Forwarding

In order to reach the outside world, you must forward ports 
`80` and `443` from your server IP address through your router. 
See your router's manual for Instructions.

### CloudFlare

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

The [`media-center.yml`](media-center-juftin-personal.yml) file can be left alone if the default list of services 
is acceptable. The [`example.env`](example.env) file can be modified and renamed `.env` in order 
for the containers to be build properly. This is the entire configuration file for
all applications. All relevant hints can be found within.

#### `acme.json`

You will need to create an empty [acme.json](traefik/acme/acme.json) file for the
application to work and generate an SSL Certificate through LetsEncrypt. 
However, while initially setting up it will be useful to remove and recreate the file to force
certificate recreation. Keep in mind that certificate creation and registration can take some tie.
uncomment the `certificatesResolvers.dns-cloudflare.acme.caServer=https://acme-staging-v02.api.letsencrypt.org/directory` 
command on the traefik service in the [docker-compose](media-center-juftin-personal.yml) file while testing. 
The instructions are below:

  - file location: [`traefik/config/acme/acme.json`](traefik/acme/acme.json)
  - file permissions (chmod): `600`

```shell script
mkdir -p traefik/acme/ && \
  rm -f traefik/acme/acme.json && \
  touch traefik/acme/acme.json && \
  chmod 600 traefik/acme/acme.json
```

### Application Setup + Container Info

Most application set up and configuration is straightforward. 
Please review the information of the various containers and applications. 
Helpful descriptions, screenshots are available to assist in initial configuration.
Important links to the source code, documentation,
and more are available for review as well. 

#### [LINK TO CONTAINER/APPLICATION DOCUMENTATION](docs/CONTAINERS.md)

* * *

### Special Thank You

This configuration was inspired by, and 
immensely helped by the article at 
[https://smarthomebeginner.com](https://www.smarthomebeginner.com/traefik-2-docker-tutorial). 


[Here](https://github.com/htpcBeginner/docker-traefik) 
is their massive home server setup on GitHub, and the accompanying 
[docker-compose](https://github.com/htpcBeginner/docker-traefik/blob/master/docker-compose-t2.yml) 
file.

* * *

* * *

<br/>
<br/>
<br/>

###### Cool stuff happens in Denver, CO [<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Flag_of_Denver%2C_Colorado.svg/800px-Flag_of_Denver%2C_Colorado.svg.png" width="25" alt="Denver">](https://denver-devs.slack.com/)