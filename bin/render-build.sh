#!/usr/bin/env bash
#exit on error
set -o errexti

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate