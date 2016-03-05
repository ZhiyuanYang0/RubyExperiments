dial_book = {
    "newyork" => 212,
    "seattle" => 206,
    "edison" => 908,
    "plainsboro" => 609,
    "sanfrancisco" => 301
}

def get_city_names(hash)
  hash.each {|k, v| puts k}
end

def get_area_code(hash, key)
    hash[key]
end

loop do
    puts "Do you want to lookup an area code based on a city name?(Y/N)"
    
    ans = gets.chomp
    if ans != "Y" && ans != "y"
        break
    end
    
    puts "Which city do you want the area code for?"
    get_city_names(dial_book)
    
    puts "Enter your selection: "
    prompt = gets.chomp
    
    if dial_book.include?(prompt)
        puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else
        puts "The city name is not in the dictionary"
    end
end

