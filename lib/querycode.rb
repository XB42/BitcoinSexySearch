class QueryCode
  attr_reader :array_of_code
def initialize()
  @array_of_code = []
end

def addtoarray(stringcode)
  @array_of_code << stringcode
end
end
