require_relative 'querycode.rb'
require_relative 'view.rb'
require_relative 'db_initializer.rb'
class Controller
  def initialize(querycode)
    @querycode = querycode
  end

  def takeinput()
    @querycode.addtoarray(View.take_input())
  end

  def printarray()
    puts @querycode.array_of_code
  end

  def initialize_db()
    DBInitialiser.initialise_DB()
  end

end
