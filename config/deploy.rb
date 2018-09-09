# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

server 'change-me',
      roles: %w{app db web}

set :application, "todolist-backend"
set :repo_url, "git@github.com:guillaumebriday/todolist-backend-laravel.git"
set :branch, :master
set :deploy_to, '/var/www/todolist-backend'
set :docker_compose, "#{fetch(:deploy_to)}/docker-compose.yml"
set :env, "#{fetch(:deploy_to)}/.env"
