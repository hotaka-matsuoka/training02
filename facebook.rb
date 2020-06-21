i = rand(100)
puts i
if i % 3 == 0
  puts "face"
elsif i % 5 == 0
  puts "book"
elsif i % 3 == 0 && i % 5 == 0
  puts "facebook"
else
  puts i 
end