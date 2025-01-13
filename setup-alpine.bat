
set COMPOSE_ENV_FILES=.env,.env.alpine

docker compose run --rm app bundle exec rake db:initial_setup
