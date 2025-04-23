# Nginx Server for Carbon Tracker Project

This is a production-ready Nginx server configuration for deploying the Carbon Tracker project. The server acts as a reverse proxy, handling both the frontend and backend services.

## Features

- Reverse proxy for frontend and backend services
- Optimized for production use
- Security headers configured
- Gzip compression enabled
- Docker-based deployment
- Easy integration with the Carbon Tracker project

## Prerequisites

- Docker
- Docker Compose
- Git

## Directory Structure

```
nginx-server/
├── Dockerfile
├── docker-compose.yml
├── nginx.conf
└── README.md
```

## Configuration

The Nginx server is configured to:
- Serve the frontend on the root path (/)
- Proxy API requests to the backend on /api path
- Handle WebSocket connections
- Apply security headers
- Enable Gzip compression

## Deployment

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd nginx-server
   ```

2. Build and start the services:
   ```bash
   docker-compose up -d
   ```

3. The application will be available at:
   - Frontend: http://localhost
   - Backend API: http://localhost/api

## Environment Variables

The following environment variables are used:
- `MONGODB_URI`: MongoDB connection string
- `JWT_SECRET`: Secret key for JWT token generation

## Security

The configuration includes:
- XSS protection
- Content Security Policy
- Frame options
- Content type sniffing protection
- Referrer policy

## Monitoring

Logs can be accessed through:
- Access logs: `/var/log/nginx/access.log`
- Error logs: `/var/log/nginx/error.log`

## Troubleshooting

1. Check container status:
   ```bash
   docker-compose ps
   ```

2. View logs:
   ```bash
   docker-compose logs nginx
   ```

3. Restart services:
   ```bash
   docker-compose restart
   ```

## License

This project is open source and available under the MIT License. 