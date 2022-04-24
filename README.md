# Kancard

An efficient way to backlog

With a little help from the classical kanban board

## Tech
 - Bulma.css for styling
 - Rails (obviously)
 - Redis for pub/sub using ActioCable
 - Devise gem for handling the authentication
 - Rubocop for linting / formatting

## Ruby version
  - 3.0.0

## System dependencies
  - Bundler
  - Npm / Yarn
  - Redis

## Getting started

- `bundle`
- `yarn`
- Start redis, `brew services start redis` (on a mac)
- run `rails server` & visit `http://127.0.0.1:3000/`

## Development

See [dev.md](dev.md)

## Screenshot

![demo v2](media/demo-v2.png)

## Issues / room for improvment

See [Issues.md](Issues.md)
