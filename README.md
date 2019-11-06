r# docker

Docker Configuration for Running a Media Center at Home.

This repository is built with the [Docker-Python SDK](https://docker-py.readthedocs.io/en/stable/) as running all of the below containers via docker-compose is not currently possible due to network configuration between the Transmission container (which depends on an active VPN budled inside the container), the Plex network (which is reccomended to be run on host), and the other containers (which are less picky about network configuration). In the future I'm hopeful to be able to consolidate this repository into a simple docker-compose file with a nice Nginx Reverse Proxy.

## Usage Notes

#### [containers.yml](docker_ctrl/containers.yml)

Customization of the [docker_ctrl/containers.yml](docker_ctrl/containers.yml) file is required for the [dockerCtrl.py](docker_ctrl/dockerCtrl.py) file to function correctly. The structure of this file is very important as the file will be passed as a set of arguments to the [Docker-Python SDK](https://docker-py.readthedocs.io/en/stable/). The [docker_ctrl/containers.yml](docker_ctrl/containers.yml) file is converted to a JSON object and each yaml["containers"][container name] will be parsed and passed as parameters in the outlined [format](https://docker-py.readthedocs.io/en/stable/containers.html#docker.models.containers.ContainerCollection.run).

#### [passwords.yml](docker_ctrl/passwords.yml)

VPN Credentials are not required to be hardcoded in the [containers.yml](docker_ctrl/containers.yml) file. Instead the credentials can be placed in a [docker_ctrl/passwords.yml](docker_ctrl/passwords.yml) file with the following format:

    Transmission:
      provider: [VPN_PROVIDER]
      username: [USER_NAME]
      password: [PASSWORD]

_Available VPN providers can be found [here](https://github.com/haugene/docker-transmission-openvpn/blob/master/docs/supported-providers.md)._

#### [dockerCtrl.py](docker_ctrl/dockerCtrl.py) CLI

    usage: dockerCtrl.py [-h] [--images] [--containers] [--group GROUP] [--remove]
                         [--make] [--list] [--version]

    Container Deployment

    optional arguments:
      -h, --help            show this help message and exit
      --images, -i          Display Images
      --containers, -c      List Docker Containers
      --group GROUP, -g GROUP
                            Group / Name Of Docker Container
      --remove, -r          Remove Container(s) / Images(s)
      --make, -m            Create Container(s)

      --list, -l            List Containers / Images
      --version             show program's version number and exit

##### Examples:

_CLI Arguments can use a long or short parameter, i.e. --make / -m_

-   `./dockerCtrl.py -h` / `./dockerCtrl.py --help`
    -   Get Help
-   `./dockerCtrl.py -l -i` / `./dockerCtrl.py -li` / `./dockerCtrl.py --list --images`
    -   List Docker Images
-   `./dockerCtrl.py -l -c -i` / `./dockerCtrl.py -lci` / `./dockerCtrl.py --list --containers --images`
    -   List Docker Containers and Images
-   `./dockerCtrl.py --make --group all` / `./dockerCtrl.py -m -g all`
    -   Create All Docker Containers
-   `./dockerCtrl.py --make --group transmission` / `./dockerCtrl.py -m -g transmission`
    -   Create the Transmission Docker Container
-   `./dockerCtrl.py --remove --containers` / `./dockerCtrl.py -rc`
    -   Remove All Docker Containers
-   `./dockerCtrl.py --remove --images --group all` / `./dockerCtrl.py -ri -g all`
    -   Remove All Docker Images (and any containers attached)

Make your life easier by making a funtion out of the [dockerCtrl.py](docker_ctrl/dockerCtrl.py) file like this:

    function containers(){
        /docker/docker_ctrl/dockerCtrl.py $@
    }

#### Dependencies:

Python dependencies are included in the [requirements.txt](docker_ctrl/requirements.txt) file.

## Containers:

### jackett

-   Jackett works as a proxy server: it translates queries from apps (Sonarr, SickRage, CouchPotato, Mylar, etc) into tracker-site-specific http queries, parses the html response, then sends results back to the requesting software. This allows for getting recent uploads (like RSS) and performing searches. Jackett is a single repository of maintained indexer scraping & translation logic - removing the burden from other apps.
-   [Docker Hub](https://hub.docker.com/r/linuxserver/jackett/)
-   [GitHub](https://github.com/linuxserver/docker-jackett)

### ouroboros

-   Ouroboros will monitor (all or specified) running docker containers and update them to the (latest or tagged) available image in the remote registry. The updated container uses the same tag and parameters that were used when the container was first created such as volume/bind mounts, docker network connections, environment variables, restart policies, entrypoints, commands, etc.
-   [GitHub](https://github.com/pyouroboros/ouroboros)

### plex

-   Plex organizes video, music and photos from personal media libraries and streams them to smart TVs, streaming boxes and mobile devices. This container is packaged as a standalone Plex Media Server. has always been a top priority. Straightforward design and bulk actions mean getting things done faster.
-   [Docker Hub](https://hub.docker.com/r/linuxserver/plex/)
-   [GitHub](https://github.com/linuxserver/docker-plex)

### portainer

-   Portainer is a lightweight management UI which allows you to easily manage your different Docker environments (Docker hosts or Swarm clusters). Portainer is meant to be as simple to deploy as it is to use. It consists of a single container that can run on any Docker engine (can be deployed as Linux container or a Windows native container, supports other platforms too). Portainer allows you to manage all your Docker resources (containers, images, volumes, networks and more) ! It is compatible with the standalone Docker engine and with Docker Swarm mode.
-   [Docker Hub](https://hub.docker.com/r/portainer/portainer/)
-   [GitHub](https://github.com/portainer/portainer)
-   [Official Website](https://www.portainer.io/)
-   [Documentation](https://portainer.readthedocs.io/en/stable/)

### radarr

-   Radarr is an independent fork of Sonarr reworked for automatically downloading movies via Usenet and BitTorrent.
-   [Docker Hub](https://hub.docker.com/r/linuxserver/radarr/)
-   [GitHub](https://github.com/linuxserver/docker-radarr)

### samba

-   Since 1992, Samba has provided secure, stable and fast file and print services for all clients using the SMB/CIFS protocol, such as all versions of DOS and Windows, OS/2, Linux and many others.
-   [Docker Hub](https://hub.docker.com/r/dperson/samba)
-   [GitHub](https://github.com/dperson/samba)

### sonarr

-   Sonarr (formerly NZBdrone) is a PVR for usenet and bittorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.
-   [Docker Hub](https://hub.docker.com/r/linuxserver/sonarr/)
-   [GitHub](https://github.com/linuxserver/docker-sonarr)

### transmission

-   This container contains OpenVPN and Transmission with a configuration where Transmission is running only when OpenVPN has an active tunnel. It bundles configuration files for many popular VPN providers to make the setup easier.
-   [Docker Hub](https://hub.docker.com/r/haugene/transmission-openvpn)
-   [GitHub](https://github.com/haugene/docker-transmission-openvpn)

<br/>
<br/>

made with ❤️ by juftin in Denver, CO
