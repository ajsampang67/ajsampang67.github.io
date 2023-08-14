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
