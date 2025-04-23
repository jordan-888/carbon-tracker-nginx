#!/bin/bash
echo "Stopping Nginx..."
docker-compose down
if [ $? -eq 0 ]; then
  echo "Nginx stopped successfully!"
else
  echo "Failed to stop Nginx. Please check the logs."
  docker-compose logs
fi
