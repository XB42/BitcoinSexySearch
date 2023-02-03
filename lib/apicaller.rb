require 'open-uri';
require 'json'
class APICaller

  def self.callAPI(block_number)
    url = "https://api-r.bitcoinchain.com/v1/block/" + block_number + "/withTx"
    doc = URI.open(url).read
    hash = JSON.parse(doc)
    return hash
  end
end
