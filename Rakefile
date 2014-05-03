# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

TestWedding::Application.load_tasks

# run the db:create and db:test:prepare tasks before we run the tests with rake,
# otherwise travis-ci complains that there is no database.
Rake::Task['default'].prerequisites.insert(0, 'db:test:prepare')
Rake::Task['default'].prerequisites.insert(0, 'db:create')

