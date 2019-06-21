# Write your code here.

katz_deli_queue()
  katz_deli = []
     
  take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
  take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
  take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.
     
  line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"
     
  now_serving(katz_deli) #=> "Currently serving Ada."
  
  return nil
end

take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, " + name + ". You are number" + katz_deli.length.to_s + "in line." 
  
  return nil
end

line(katz_deli)
  if katz_deli.length != 0 
    puts "Currently serving " + katz_deli.shift + "." 
  else 
    puts "There is nobody waiting to be served!"
  end
  
  return nil
end