# media-center

Docker Configuration for Running a Media Center at Home.

## Configuration

### Port Forwarding

In order to reach the outside wotld, you must forward ports `80` and `443` from your server IP address through your router. See your router's manual for Instructions.

### CloudFlare

This configuration was inspired by, and immensely helped by the article at [`https://smarthomebeginner.com`](https://www.smarthomebeginner.com/traefik-reverse-proxy-tutorial-for-docker). Instructions in this article to set up free [`CloudFlare`](https://dash.cloudflare.com/sign-up) services. The CloudFlare section of the article can be found [`here`](https://www.smarthomebeginner.com/traefik-reverse-proxy-tutorial-for-docker/#Dynamic_DNS_or_Your_Own_Domain_Name).

### Google OAuth 2.0

The Google Oauth 2.0 configuration can be found [`here`](https://www.smarthomebeginner.com/google-oauth-with-traefik-docker/#How_do_I_setup_OAuth). This configuration requires Google Authentication to access any services published on the web.

### DuckDNS

A free DuckDNS dynamic DNS subdomain can be set up [`here`]("https://www.duckdns.org/").

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

## Set Up

Most application set up and configuration is straightforward. Please follow the documentation links in the below list of containers for inoformation.

### Networking

Networking information can be found at [`docs/docker_networking.md`](docs/docker_networking.md) folder. For ease of use and interconnection between services, all docker containers have been pre-assigned an IP address.

    Heimdall Note:
      enter the full url path of the domain
      in new tabs for a redirect.
      (ie. https://app.example.com)

* * *

<br/>

* * *

### Containers

### jackett

-   Jackett works as a proxy server: it translates queries from apps (Sonarr, SickRage, CouchPotato, Mylar, etc) into tracker-site-specific http queries, parses the html response, then sends results back to the requesting software. This allows for getting recent uploads (like RSS) and performing searches. Jackett is a single repository of maintained indexer scraping & translation logic - removing the burden from other apps.
-   [Docker Hub](https://hub.docker.com/r/linuxserver/jackett/)
-   [GitHub](https://github.com/linuxserver/docker-jackett)

#### ouroboros

-   Ouroboros will monitor (all or specified) running docker containers and update them to the (latest or tagged) available image in the remote registry. The updated container uses the same tag and parameters that were used when the container was first created such as volume/bind mounts, docker network connections, environment variables, restart policies, entrypoints, commands, etc.
-   [GitHub](https://github.com/pyouroboros/ouroboros)

#### plex

-   Plex organizes video, music and photos from personal media libraries and streams them to smart TVs, streaming boxes and mobile devices. This container is packaged as a standalone Plex Media Server. has always been a top priority. Straightforward design and bulk actions mean getting things done faster.
-   [Docker Hub](https://hub.docker.com/r/linuxserver/plex/)
-   [GitHub](https://github.com/linuxserver/docker-plex)

#### portainer

-   Portainer is a lightweight management UI which allows you to easily manage your different Docker environments (Docker hosts or Swarm clusters). Portainer is meant to be as simple to deploy as it is to use. It consists of a single container that can run on any Docker engine (can be deployed as Linux container or a Windows native container, supports other platforms too). Portainer allows you to manage all your Docker resources (containers, images, volumes, networks and more) ! It is compatible with the standalone Docker engine and with Docker Swarm mode.
-   [Docker Hub](https://hub.docker.com/r/portainer/portainer/)
-   [GitHub](https://github.com/portainer/portainer)
-   [Official Website](https://www.portainer.io/)
-   [Documentation](https://portainer.readthedocs.io/en/stable/)

#### radarr

-   Radarr is an independent fork of Sonarr reworked for automatically downloading movies via Usenet and BitTorrent.
-   [Docker Hub](https://hub.docker.com/r/linuxserver/radarr/)
-   [GitHub](https://github.com/linuxserver/docker-radarr)

#### samba

-   Since 1992, Samba has provided secure, stable and fast file and print services for all clients using the SMB/CIFS protocol, such as all versions of DOS and Windows, OS/2, Linux and many others.
-   [Docker Hub](https://hub.docker.com/r/dperson/samba)
-   [GitHub](https://github.com/dperson/samba)

#### sonarr

-   Sonarr (formerly NZBdrone) is a PVR for usenet and bittorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.
-   [Docker Hub](https://hub.docker.com/r/linuxserver/sonarr/)
-   [GitHub](https://github.com/linuxserver/docker-sonarr)

#### transmission

-   This container contains OpenVPN and Transmission with a configuration where Transmission is running only when OpenVPN has an active tunnel. It bundles configuration files for many popular VPN providers to make the setup easier.
-   [Docker Hub](https://hub.docker.com/r/haugene/transmission-openvpn)
-   [GitHub](https://github.com/haugene/docker-transmission-openvpn)

<br/>
<br/>

made with ❤️ by juftin
