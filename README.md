## Full deployment steps from scratch
1. Create EC2 instance
1. Upload docker-compose.yml
1. Login to docker to enable pulling images
1. Start docker-compose.yml

- Need a two loadbalancers 
-- ALB1 ->  ajtheamazing container at 8080 
-- ALB2 ->  wigi container at port 5000
- Point DNS to respective loadbalancers
-- ajsampang.com -> ALB1
-- wigi.ajsampang.com -> ALB2
