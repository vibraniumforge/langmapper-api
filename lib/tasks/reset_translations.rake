namespace :db do
  desc "Clear out the translations table"
  task :reset_translations => :environment do
    puts "Clearing out the translations table"
    Translation.destroy_all
    puts "Finished."
  end
end
