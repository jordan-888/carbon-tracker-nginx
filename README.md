# Carbon Tracker Nginx Configuration

This repository contains the Nginx configuration and deployment files for the Carbon Tracker application.

## Configuration Files

- `nginx.prod.conf`: Production Nginx configuration
- `docker-compose.prod.yml`: Production Docker Compose configuration
- `Dockerfile.prod`: Production Dockerfile for Nginx
- `deploy.sh`: Deployment script

## Production Setup

The production setup includes:

1. Nginx reverse proxy
2. SSL/TLS configuration
3. Backend API proxy
4. Static file serving for the frontend
5. Health checks
6. Docker Compose configuration for all services

### Environment Variables

Required environment variables:

- `DOCKER_REGISTRY`: Docker registry URL (e.g., ghcr.io)
- `IMAGE_NAME`: Image name from GitHub repository
- `JWT_SECRET`: Secret for JWT token generation

### SSL Configuration

Place your SSL certificates in the `ssl` directory:
- `ssl/certificate.crt`: SSL certificate
- `ssl/private.key`: Private key

### Deployment

The application is deployed using GitHub Actions. The workflow:

1. Builds the frontend
2. Creates a Docker image
3. Pushes to GitHub Container Registry
4. Deploys to the production server

### Monitoring

- Access logs: `logs/access.log`
- Error logs: `logs/error.log`
- Health check endpoint: `/health`

## Development

To make changes:

1. Create a new branch
2. Update configuration files
3. Test locally
4. Create a pull request
5. Merge after review

## Security

- All traffic is encrypted using SSL/TLS
- Backend is not directly accessible
- Regular security updates
- Environment variables for sensitive data