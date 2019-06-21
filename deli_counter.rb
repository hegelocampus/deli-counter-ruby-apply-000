  katz_deli = []
     
  
def take_a_number(katz_deli, name)
  katz_deli << name
  spot = katz_deli.length.to_s
  puts "Welcome, " + name + ". You are number " + spot + " in line." 
  
  return nil
end


def line(katz_deli)
  if katz_deli.length != 0
    line_s = []
    katz_deli.each_with_index do |name, i|
      spot = i + 1
      line_s << spot.to_s + "."
      #line_s << "." 
      line_s << name
    
    end
    puts "The line is currently: " + line_s.join(" ")

    return nil

  else
    puts "The Line is currently empty"  

    return nil

  end
end

def now_serving(katz_deli)
  if katz_deli.length != 0 
    puts "Currently serving " + katz_deli.shift + "." 
    return nil
  else 
    puts "There is nobody waiting to be served!"
    return nil
  end
end

take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.
    
line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"
    
now_serving(katz_deli) #=> "Currently serving Ada."
