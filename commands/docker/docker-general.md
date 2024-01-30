# General Docker commands

### Get the hostname of a running container

Get the container id

```bash
docker ps
```

Get the hostname

```bash
docker inspect --format='{{.Config.Hostname}}' container_id_or_name
```
