# ajsampang67.github.io
Personal Website

## Prerequisites
- Node version v16.15.0

## Local Development
Run `http-server -o`

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
sudo docker build -t ajtheamazing .

## Tagging new Docker image 
docker tag <Docker image ID> docker.io/ajsampang67/ajtheamazing:<Version>

## Pushing new Docker image tag
docker push docker.io/ajsampang67/ajtheamazing:<Version>
