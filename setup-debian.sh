
export COMPOSE_FILE=compose.yml:compose.debian.yml
export COMPOSE_PROJECT_NAME=canvas-lms-debian

docker compose run --rm app bundle exec rake db:initial_setup
