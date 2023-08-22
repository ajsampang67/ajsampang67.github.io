# ajsampang67.github.io
Personal Website

## Prerequisites
- Node version v16.15.0

## Local Development
`npm run dev`

## Build Stylesheet
`npm run build-css`

## Directory Structure
/
| blog          - Blog build artifacts directory
| pages
    | blog      - Blog source directory. Contains `Jekyll`
| scss          - All stylesheets

# Docker
## Building docker image
docker build -t ajtheamazing .

## Running Docker image locally
docker run -p 80:8080 ajtheamazing 

## Tagging new Docker image for push
docker tag <Docker image ID> docker.io/ajsampang67/ajtheamazing:<Version>

## Pushing new Docker image tag
docker push docker.io/ajsampang67/ajtheamazing:<Version>

# Prod
## Full deployment steps from scratch
1. Create EC2 instance
1. Upload webserver/docker-compose-le.yml (Let's Encrypt container) and docker-compose.yml (npm server)
1. In webserver/nginx.conf comment out SSL server block (need server block commented out in order to start nginx)
1. Build and push webserver image
1. Start docker-compose.yml
1. Start docker-compose-le.yml. Confirm certificates were created and copied into volume
1. Comment SSL block back into nginx.conf
1. Build and push webserver image
1. Re-pull docker images with docker compose (docker compose pull)
1. Start docker-compose.yml (docker compose up -d)
