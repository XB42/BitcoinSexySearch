require_relative 'controller.rb'
puts "welcome to block explorer"
queryobj = QueryCode.new()
controller = Controller.new(queryobj)
while true
  controller.takeinput()
  puts "more?(Y/N)"
  break if gets.chomp! == 'N'
end
controller.printarray()
