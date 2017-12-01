require 'csv'

namespace :import do
    
    desc "Importing the pm2.5 data from locally stored csv"
    task pm: :environment do
        files= File.join Rails.root, "pm.csv"
        CSV.foreach(files, headers: true) do |row|
            Pmvalue.create!(
                number: row["No"], 
                year: row["year"], 
                month: row["month"], 
                day: row["day"], 
                hour: row["hour"], 
                pm: row["pm2.5"], 
                temperature: row["TEMP"], 
                pressure: row["PRES"])
        end
        
    end
end