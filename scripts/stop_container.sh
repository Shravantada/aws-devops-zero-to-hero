#!/bin/bash
#!/bin/bash
set -e

# Stop and remove the running container (if any)
containerid=$(docker ps -q) # Fetch IDs of all running containers

if [ -n "$containerid" ]; then
  echo "Stopping and removing container(s): $containerid"
  docker rm -f $containerid
else
  echo "No running containers found to stop."
fi


