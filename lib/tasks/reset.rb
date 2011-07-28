namespace :db do
  desc "Raise an error unless the RAILS_ENV is development"
  task :reset do
    raise "Hey, development only you monkey!" unless RAILS_ENV == 'development'
  end
  desc "Drop, create, migrate then seed the development database"
  task :seed => [
    'environment', 
    'db:development_environment_only', 
    'db:drop', 
    'db:create', 
    'db:migrate', 
    'db:fixtures:load'
    ]
  end
end