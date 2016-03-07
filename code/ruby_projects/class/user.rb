module Destructable
  def destroy(anyobject)
      puts "I will destroy the object"
  end
end

class User
    include Destructable
    attr_accessor :name, :email;
    
    def initialize(name, email)
      @name = name
      @email = email
    end
    
    def run
        puts "Hey I'm running"
    end
    
    def self.identify_yourself
        puts "I am a class method"
    end
    
    # def get_name
    #     @name
    # end
    
    # def set_name=(name)
    #     @name = name
    # end
    
end

class Buyer < User
    def run
        puts "New run methond"
    end
end

class Seller < User
end

class Admin < User
end




#puts User.ancestors

user = User.new("Jordan", "Jordan@gmail.com")
user.run
puts user

puts user.name
user.name = "John"
puts user.name

puts user.email

buyer1 = Buyer.new("Sam", "Sam.com")
buyer1.run

seller1 = Seller.new("Sam", "Sam.com")
seller1.run

admin1 = Admin.new("Sam", "Sam.com")
admin1.run

puts Buyer.ancestors

User.identify_yourself

new_user = User.new("New", "User.com")
new_user.destroy(new_user)