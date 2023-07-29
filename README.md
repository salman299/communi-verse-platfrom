# CommuniVerse

To run this repository locally, follow these steps

**Requirements:**

- Docker

**Clone this repository using**

```bash
git clone git@github.com:salman299/communi-verse-platfrom.git
```

Navigate into the repository

```bash
cd communi-verse-platfrom
```

**Clone two other repositories by running these commands**

```bash
chmod +x ./clone-repos.sh
./clone-repos.sh
```

**Docker Commands**

```bash
# Build containers 
docker-compose build

# Run containers
docker-compose up

# Run and build containers
docker-compose --build up

# View container logs (Replace "service_name" with the actual service name defined in your docker-compose.yml file)
docker-compose logs service_name

# Access a shell inside a container (Replace "service_name" with the actual service name defined in your docker-compose.yml file)
docker-compose exec service_name sh
```