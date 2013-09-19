run "cd #{release_path} && bundle exec rake assets:precompile"
run "cd #{release_path} && rake db:populate"
