
export COMPOSE_ENV_FILES=.env,.env.debian

docker compose run --rm app bundle exec rake db:initial_setup
