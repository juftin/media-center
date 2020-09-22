# Containers

## duckdns

[Docker Hub](https://hub.docker.com/r/linuxserver/duckdns/) \|\|
[GitHub](https://github.com/linuxserver/docker-duckdns) \|\|
[Website](https://www.duckdns.org)

Duckdns is a free service which will point a DNS (sub domains of duckdns.org) to an IP of your choice. The service is completely free, and doesn't require reactivation or forum posts to maintain its existence.

## heimdall

[Docker Hub](https://hub.docker.com/r/linuxserver/heimdall/) \|\|
[GitHub](https://github.com/linuxserver/docker-heimdall) \|\|
[Website](https://www.heimdall.site)

Heimdall is a way to organise all those links to your most used web sites and web applications in a simple way. Simplicity is the key to Heimdall. Why not use it as your browser start page? It even has the ability to include a search bar using either Google, Bing or DuckDuckGo.

###### Notes:

> enter the full url path of the domain in new tabs for a redirect. (ie. `https://app.example.com`)

## jackett

[Docker Hub](https://hub.docker.com/r/linuxserver/jackett/) \|\|
[GitHub](https://github.com/linuxserver/docker-jackett)

Jackett works as a proxy server: it translates queries from apps (Sonarr, SickRage, CouchPotato, Mylar, etc) into tracker-site-specific http queries, parses the html response, then sends results back to the requesting software. This allows for getting recent uploads (like RSS) and performing searches. Jackett is a single repository of maintained indexer scraping & translation logic - removing the burden from other apps.

###### Notes:

> RARBG and ThePirateBay are useful indexers. Make sure to pay close attention to the category codes relating to your particular download type.

## nextcloud

[Docker Hub](https://hub.docker.com/r/linuxserver/nextcloud/) \|\|
[GitHub](https://github.com/linuxserver/docker-nextcloud) \|\|
[Website](https://nextcloud.com)

 Nextcloud gives you access to all your files wherever you are. With Nextcloud you pick a server of your choice, at home, in a data center or at a provider. And that is where your files will be. Nextcloud runs on that server, protecting your data and giving you access from your desktop or mobile devices. Through Nextcloud you also access, sync and share your existing data on that FTP drive at the office, a Dropbox or a NAS you have at home.

###### Notes:

> On initial configuration, use the postgres database to build the backend of this application to improve performance.

## oauth

[Docker Hub](https://hub.docker.com/r/thomseddon/traefik-forward-auth) \|\|
[GitHub](https://github.com/thomseddon/traefik-forward-auth)

A minimal forward authentication service that provides Google oauth based login and authentication for the traefik reverse proxy/load balancer.

## ombi

[Docker Hub](https://hub.docker.com/r/linuxserver/ombi/) \|\|
[GitHub](https://github.com/linuxserver/docker-ombi) \|\|
[Website](https://ombi.io/)

Ombi allows you to host your own Plex Request and user management system. If you are sharing your Plex server with other users, allow them to request new content using an easy to manage interface! Manage all your requests for Movies and TV with ease, leave notes for the user and get notification when a user requests something. Allow your users to post issues against their requests so you know there is a problem with the audio etc. Even automatically send them weekly newsletters of new content that has been added to your Plex server!

## ouroboros

[Docker Hub](https://hub.docker.com/r/pyouroboros/ouroboros) \|\|
[GitHub](https://github.com/pyouroboros/ouroboros)

Ouroboros will monitor (all or specified) running docker containers and update them to the (latest or tagged) available image in the remote registry. The updated container uses the same tag and parameters that were used when the container was first created such as volume/bind mounts, docker network connections, environment variables, restart policies, entrypoints, commands, etc.

## plex

[Docker Hub](https://hub.docker.com/r/linuxserver/plex/) \|\|
[GitHub](https://github.com/linuxserver/docker-plex) \|\|
[Website](https://plex.tv)

Plex organizes video, music and photos from personal media libraries and streams them to smart TVs, streaming boxes and mobile devices. This container is packaged as a standalone Plex Media Server. has always been a top priority. Straightforward design and bulk actions mean getting things done faster.

## portainer

[Docker Hub](https://hub.docker.com/r/portainer/portainer/) \|\|
[GitHub](https://github.com/portainer/portainer) \|\|
[Website](https://www.portainer.io/) \|\|
[Documentation](https://portainer.readthedocs.io/en/stable/)

Portainer is a lightweight management UI which allows you to easily manage your different Docker environments (Docker hosts or Swarm clusters). Portainer is meant to be as simple to deploy as it is to use. It consists of a single container that can run on any Docker engine (can be deployed as Linux container or a Windows native container, supports other platforms too). Portainer allows you to manage all your Docker resources (containers, images, volumes, networks and more) ! It is compatible with the standalone Docker engine and with Docker Swarm mode.

## postgres

[Docker Hub](https://hub.docker.com/_/postgres) \|\|
[Documentation](https://www.postgresql.org/docs)

PostgreSQL, often simply "Postgres", is an object-relational database management system (ORDBMS) with an emphasis on extensibility and standards-compliance. As a database server, its primary function is to store data, securely and supporting best practices, and retrieve it later, as requested by other software applications, be it those on the same computer or those running on another computer across a network (including the Internet). It can handle workloads ranging from small single-machine applications to large Internet-facing applications with many concurrent users. Recent versions also provide replication of the database itself for security and scalability.

## radarr

[Docker Hub](https://hub.docker.com/r/linuxserver/radarr/) \|\|
[GitHub](https://github.com/linuxserver/docker-radarr)

 Radarr is an independent fork of Sonarr reworked for automatically downloading movies via Usenet and BitTorrent.

## samba

[Docker Hub](https://hub.docker.com/r/dperson/samba) \|\|
[GitHub](https://github.com/dperson/samba)

Since 1992, Samba has provided secure, stable and fast file and print services for all clients using the SMB/CIFS protocol, such as all versions of DOS and Windows, OS/2, Linux and many others.

## sonarr

[Docker Hub](https://hub.docker.com/r/linuxserver/sonarr/) \|\|
[GitHub](https://github.com/linuxserver/docker-sonarr)

Sonarr (formerly NZBdrone) is a PVR for usenet and bittorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

## tautulli

[Docker Hub](https://hub.docker.com/r/linuxserver/tautulli/) \|\|
[GitHub](https://github.com/linuxserver/docker-tautulli) \|\|
[Website](https://tautulli.com/)

Tautulli is a 3rd party application that you can run alongside your Plex Media Server to monitor activity and track various statistics. Most importantly, these statistics include what has been watched, who watched it, when and where they watched it, and how it was watched. The only thing missing is "why they watched it", but who am I to question your 42 plays of Frozen. All statistics are presented in a nice and clean interface with many tables and graphs, which makes it easy to brag about your server to everyone else.

## traefik

[Docker Hub](https://hub.docker.com/_/traefik) \|\|
[GitHub](https://github.com/containous/traefik) \|\|
[Website](https://traefik.io/) \|\|
[Documentation](https://docs.traefik.io/)

Traefik (pronounced traffic) is a modern HTTP reverse proxy and load balancer that makes deploying microservices easy. Traefik integrates with your existing infrastructure components (Docker, Swarm mode, Kubernetes, Marathon, Consul, Etcd, Rancher, Amazon ECS, ...) and configures itself automatically and dynamically. Pointing Traefik at your orchestrator should be the only configuration step you need.

## transmission

[Docker Hub](https://hub.docker.com/r/haugene/transmission-openvpn) \|\|
[GitHub](https://github.com/haugene/docker-transmission-openvpn)

This container contains OpenVPN and Transmission with a configuration where Transmission is running only when OpenVPN has an active tunnel. It bundles configuration files for many popular VPN providers to make the setup easier.

###### Notes:

> This container has a health check that pings google.com with data to verify a stable connnection. Traefik takes roughly 5 minutes to recognize this container as healthy before making it available.
>
> As a sanity check I like to use the torrent magnet IP tool at <https://ipleak.net> to verfiy a stable VPN connection.
