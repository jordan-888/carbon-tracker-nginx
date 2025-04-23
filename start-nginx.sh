#!/bin/bash
echo "Starting Nginx..."
docker-compose up -d
if [ $? -eq 0 ]; then
  echo "Nginx started successfully!"
  echo "Frontend: http://localhost"
  echo "API: http://localhost/api"
else
  echo "Failed to start Nginx. Please check the logs."
  docker-compose logs
fi
