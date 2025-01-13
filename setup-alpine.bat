
set COMPOSE_FILE=compose.yml;compose.alpine.yml
set COMPOSE_PROJECT_NAME=canvas-lms-alpine

docker compose run --rm app bundle exec rake db:initial_setup
