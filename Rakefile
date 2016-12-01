require "bundler/gem_tasks"

# bundle exec rake console
desc 'start a console with the gem loaded'
task :console do
  sh 'irb -rubygems -I lib -r swagger_client.rb -r console_defaults.rb'
end
