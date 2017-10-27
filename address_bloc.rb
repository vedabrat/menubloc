
#for interactivity and menus
require_relative 'controllers/menu_controller'

menu = MenuController.new
# #5
system "clear"
puts "Welcome to AddressBloc!"
# #6
menu.main_menu
