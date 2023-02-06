require_relative 'apicaller.rb'
require_relative 'view.rb'
require 'csv'
class DBInitialiser
  def self.initialise_DB
    filepath = "../db/database.csv"
    i = APICaller.get_max_height()
    CSV.open(filepath, "wb") do |csv|
        csv << ["height", "tx_count", "Reward", "Fee", "Difficulty", "Reward", "Size", "Time"]
        (1..i).each do |block|
          blockhash = APICaller.callAPI(block.to_s)
          csv << [blockhash[0]["height"], blockhash[0]["tx_count"], blockhash[0]["reward"], blockhash[0]["fee"], blockhash[0]["difficulty"], blockhash[0]["reward"], blockhash[0]["size"], blockhash[0]["time"]]
        end
    end
  end
end
