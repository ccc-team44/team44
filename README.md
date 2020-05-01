# COMP90024A2 Development Stack

Quickstart your COMP90024A2 development environment.

Interface is accessible at `localhost:8000`

## Development

### Linux & macOS

1. Install [Docker](https://hub.docker.com/search/?type=edition&offering=community)
2. Clone this repo
3. Go inside the cloned repo
4. `chmod +x team44.sh`
5. Run `./team44.sh setup` to setup all the repositories
6. Then run `./team44.sh up` to start all services in development mode
7. Wait for everything to be up and ready

### Windows

WIP

## team44.sh Script Commands

| Command | Function |
| ------- | -------- |
| `./team44.sh up` | Start all services in development mode |
| `Ctrl+C` and then `./team44.sh down` | Shut down and remove all running containers |
| `./team44.sh update` | Pull latest changes from all repo |
| `./team44.sh build` | Rebuild all services |
| `./team44.sh cleanup` | Remove all containers and volumes. WARNING: Destroys dev data! |

## Service Ports

| Service | Docker Name | Port |
| ------- | ----------- | ---- |
| React App | react-app | 8000 |
| Django Server | django-server | 8001 |
| CouchDB | WIP | WIP |

# Author

[Yefta Sutanto](https://github.com/nevrending)

