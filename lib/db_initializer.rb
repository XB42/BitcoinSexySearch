require_relative 'apicaller.rb'
require_relative 'view.rb'
require 'sqlite3'
class DBInitialiser
  DB = SQLite3::Database.new("../db/database.db")
  def self.initialise_DB
    i = APICaller.get_max_height()
    p c = DB.execute("SELECT COUNT(*) FROM blocks")[0][0]
    (c..i).each do |block|
      blockhash = APICaller.callAPI(block.to_s)
      p "executing row #{block}"
      query = "INSERT INTO blocks (height, tx_count, reward, fee, difficulty, size, time) VALUES( #{blockhash[0]["height"]}, #{blockhash[0]["tx_count"]}, #{blockhash[0]["reward"]}, #{blockhash[0]["fee"]}, #{blockhash[0]["difficulty"]}, #{blockhash[0]["size"]}, #{blockhash[0]["time"]})"
      rows = DB.execute(query)
    end
  end
end
