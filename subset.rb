
master = [1, 2, 3]
subset = [6, 2, 1]


validation = ""

  subset.each do |subset_number|
    validation =  master.include?(subset_number)
    break if validation == false
  end

puts validation
