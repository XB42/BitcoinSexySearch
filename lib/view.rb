require 'csv'
class View
  $PATH = "db/database.csv"

  def self.take_input()
    array = []
    while true
      puts "1 - time"
      puts "2 - height"
      puts "3 - block reward"
      array << ("T" + gets.chomp! )
      break unless ["T1", "T2", "T3"].include?(array[-1])
      puts "1 - squared "
      puts "2 - 2X"
      array << ("O" + gets.chomp!)
      break unless ["O1", "O2", "O3"].include?(array[-1])
    end
    return array[0..-2]
  end

end
