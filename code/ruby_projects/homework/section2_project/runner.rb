require 'pp' #style the output
require_relative 'user'

user = User.new 'Jordan.com', 'Jordan'

pp user

user.save
