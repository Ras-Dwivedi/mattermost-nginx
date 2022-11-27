docker-compose -f docker-compose.yaml up -d
sudo docker cp default.conf mattermost:/etc/nginx/conf.d/
sudo docker cp localhost.key mattermost:/
sudo docker cp localhost.crt mattermost:/

sudo docker exec mattermost nginx -t
sudo docker exec mattermost nginx -s reload
