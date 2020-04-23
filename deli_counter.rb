# Write your code here.
katz_deli = []

def line(deli)
  if deli == []
    puts "The line is currently empty."
  else
    list = "The line is currently:"
    ticknum = 1
    deli.each do |name|
      list << " #{ticknum}. #{name}"
      puts list
      ticknum++
    end
  end
end

def take_a_number(deli, customer)
  deli << customer
  line_size = deli.size
  puts "Welcome, #{customer}. You are number #{line_size} in line."
end

def now_serving(deli)
  if deli == []
    puts "There is nobody waiting to be served!"
  else
    current_customer = deli[0]
    puts "Currently serving #{current_customer}."
    deli.shift
  end
end
