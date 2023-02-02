class View
  def self.take_input_type()

    puts "1 - time"
    puts "2 - height"
    puts "3 - block reward"
    return ("T" + gets.chomp! )
  end

  def self.take_input_operator()
    puts "1 - squared "
    puts "2 - 2X"
    return ("O" + gets.chomp!)
  end

end
