
set COMPOSE_FILE=compose.yml;compose.debian.yml
set COMPOSE_PROJECT_NAME=canvas-lms-debian

docker compose run --rm app bundle exec rake db:initial_setup
