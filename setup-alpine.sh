
docker compose -f docker-compose.yml -f docker-compose.alpine.yml -p canvas-lms-alpine run --rm app bundle exec rake db:initial_setup
