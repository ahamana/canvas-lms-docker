
docker compose -f compose.yml -f compose.alpine.yml -p canvas-lms-alpine run --rm app bundle exec rake db:initial_setup
