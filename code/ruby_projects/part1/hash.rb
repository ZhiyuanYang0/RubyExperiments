#Hash

my_details = {'name' => 'Zhiyuan', 'favcolor' => 'orange'}
my_hash = {a: 1, b: 2, c: 3, d: 6}

my_hash.each {|k, v| puts "The key is #{k}, and the value is #{v}"}

my_hash.each {|k, v| my_hash.delete(k) if v > 3}

my_hash.each {|k, v| puts "The key is #{k}, and the value is #{v}"}