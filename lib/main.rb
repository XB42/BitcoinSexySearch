require_relative 'controller.rb'
puts "welcome to block explorer"
queryobj = QueryCode.new()
controller = Controller.new(queryobj)
while true
  controller.takeinput()
  controller.initialize_db()
  puts "more?(Y/N)"
  break if gets.chomp! == 'N'
  controller.query_db
end
controller.printarray()
