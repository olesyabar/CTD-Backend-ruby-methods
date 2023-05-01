h = Hash.new

2.times do |i|
  puts "For <key-value> pair #{i+1}, enter key:"
  key = gets.chomp
  while h.has_key?(key)
    puts "Key must be unique, enter new key for <key-value> pair #{i+1}:"
    key = gets.chomp
  end
  puts "For <key-value> pair #{i+1}, enter value:"
  value = gets.chomp
  h[key] = value
end

def convert_hash_to_array(h)
  return h.keys, h.values
end

key_values = convert_hash_to_array(h)
puts "Keys: #{key_values[0]}"
puts "Values: #{key_values[1]}"