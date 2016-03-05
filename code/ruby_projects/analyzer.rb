
def multiply(first_number, second_number)
    first_number.to_f * second_number.to_f
end

def add(first_number, second_number)
    first_number.to_i + second_number.to_i
end
    
puts "What do you want to do? 1) multiply 2)add"    
prompt = gets.chomp.to_i
puts "Pleas enter your first number"
first_number = gets.chomp

puts "please enter your second number"
second_number = gets.chomp

if prompt == 1
    puts "Multiply"
    puts "the first number * second number is: #{multiply(first_number, second_number)}"
elsif prompt == 2
    puts "add"
    puts "the first number + second number is: #{add(first_number, second_number)}"
else 
    puts "Invalid choice"
end

# puts "the first number * second number is: #{first_number.to_i * second_number.to_i}"
# puts "the first nubmer / second number is: #{first_number.to_f / second_number.to_f}"


# puts "the first number * second number is: #{multiply(first_number, second_number)}"
