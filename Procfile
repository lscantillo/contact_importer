release: bundle exec rake db:migrate
worker: bundle exec sidekiq -c 2
web: bin/rails server -p ${PORT:-5000} -e $RAILS_ENV