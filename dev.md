# Development in container

## Windows users

`docker run -v %cd%:/app -w /app --name ruby-dev -p 3000:3000 --rm -it ruby:3.0.0 sh ./entrypoint.sh`

## UNIX users

`docker run -v $(pwd):/app -w /app --name ruby-dev -p 3000:3000 --rm -it ruby:3.0.0 sh ./entrypoint.sh`

# Oink

`bundle exec oink --threshold=100 log/`

# Annotate

## Annotate controllers

`bundle exec chusaku`

## Annotate routes & models

`bundle exec annotate --with-comment`

# Lint / Format

`rubocop -A`

# Security scanner

`brakeman`
