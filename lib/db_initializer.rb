require_relative 'apicaller.rb'
require_relative 'view.rb'
class DBInitialiser
  def self.initialise_DB
    i = APICaller.get_max_height()
    while i < View.get_max_height_from_DB
      blockhash = APICaller.callAPI(i.to_s)
      #add Blockhash to database
    end
  end
end
