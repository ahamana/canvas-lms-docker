
docker compose -f docker-compose.yml -f docker-compose.debian.yml -p canvas-lms-debian run --rm app bundle exec rake db:initial_setup
