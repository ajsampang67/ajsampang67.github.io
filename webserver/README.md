docker run -d -p 80:80 -v /home/ajsampang/webserver/templates:/etc/nginx/templates nginx

preferred:
docker-compose up -d

- Ensure nginx isn't running
- may need to rebuild docker image (use Dockerfile, name it webserver)
