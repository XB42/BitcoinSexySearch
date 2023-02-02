require_relative 'querycode.rb'
require_relative 'view.rb'
class Controller
  def initialize(querycode)
    @querycode = querycode
  end

  def takeinput()
    @querycode.addtoarray(View.take_input_type())
  end

  def printarray()
    puts @querycode.array_of_code
  end

end
