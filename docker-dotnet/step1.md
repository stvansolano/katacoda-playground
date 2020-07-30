Docker 101 + .NET (Core)

## Basic Linux commands

This is an _example_ of running a **command**

`echo 'Hello World'`{{execute}}

### Other commands

- Show current path
`pwd`{{execute}}

- Move to a folder
`cd /root`{{execute}}

- Move to parent folder
`cd ..`{{execute}}

## Getting Started

### 1. Clone the Playground: 

`cd ~/`{{execute}}

`git clone https://github.com/stvansolano/my-playgrounds.git lab`{{execute}}

### 2. Run multiple containers (orchestrator)

- Run docker-compose

`cd ~/lab/docker-dotnet/assets/`{{execute}}

`docker-compose -f docker-compose.yml up`{{execute}}


### 3. Install DotNet

`apt-get update`{{execute}}

`apt-get install -y wget`{{execute}}

`wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`{{execute}}

`apt-get update`{{execute}}

`apt-get install -y apt-transport-https && apt-get update`{{execute}}

`dpkg -i packages-microsoft-prod.deb && apt-get update`{{execute}}

`apt-get install -y dotnet-sdk-3.1`{{execute}}
