# --version :\
# VERSION=0
## $ rake dbs:migrate
#         /      \
# namespace      task

namespace :dbs do 
  desc "Running migrations in all databases setting in database.yml"
  task :migrate => :environment do
    ActiveRecord::Migration.verbose = true
    #  Load Environment do Rails #
    ActiveRecord::Base.configurations.each_value do |config|
      ActiveRecord::Base.establish_connection(config)
      version = ENV["VERSION"] ? ENV["VERSION"].to_i : nil
      ActiveRecord::Migrator.migrate('db/migrate', version)
      Rake::Task["db:schema:dump"] if ActiveRecord::Base.schema_format.equal?(:ruby)
    end
  end
end

# Próximo episódio -> ?... :)