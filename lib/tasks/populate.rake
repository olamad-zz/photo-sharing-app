namespace :db do
 
  # Populates database data
  desc "Populate the database with data."
  task :populate => :environment do
  	puts "#{'*'*(`tput cols`.to_i)}\nChecking Environment... The database will be cleared of all content before populating.\n#{'*'*(`tput cols`.to_i)}"
    # Removes content before populating with data to avoid duplication
    Rake::Task['db:reset'].invoke
 
      Photo.create(:name => "OpsWorks", 
                   :description => "OpsWorks logo",
                   :picture => File.open(Rails.root.join("app/assets/images/logo.jpg"), "r"))
    
    puts "#{'*'*(`tput cols`.to_i)}\nThe database has been populated!\n#{'*'*(`tput cols`.to_i)}"
  end
 
end