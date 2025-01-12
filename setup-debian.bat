
docker compose -f compose.yml -f compose.debian.yml -p canvas-lms-debian run --rm app bundle exec rake db:initial_setup
