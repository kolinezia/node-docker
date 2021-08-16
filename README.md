# node-docker

### Learn DevOps with:
- Nginx (load balancer)
- Node.js 
- Express 
- MongoDB 
- Redis (for session)

___
### Add Files:

```javascript
    // .env

MONGO_USER=username
MONGO_PASSWORD=password
MONGO_IP=mongo
MONGO_PORT=27017
REDIS_URL=redis
REDIS_PORT=6379
SESSION_SECRET=secret

```
___
### Docker-compose
#### Development (port `3000`)
- up: `docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --scale node-app=2`
- down: `docker-compose -f docker-compose.yml -f docker-compose.dev.yml down`
#### Production (port `80`)
- up: `docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --scale node-app=2`
- down: `docker-compose -f docker-compose.yml -f docker-compose.prod.yml down`