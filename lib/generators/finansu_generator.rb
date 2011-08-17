require 'rails/generators'
require 'rails/generators/migration'

class FinansuGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  source_root File.expand_path('../../finansu', __FILE__)

  # Copies the migration template to db/migrate.
  def copy_files(*args)
    migration_template 'migration.rb', 'db/migrate/create_finansu.rb'
  end

  # Taken from ActiveRecord's migration generator
  def self.next_migration_number(dirname) #:nodoc:
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end
end
