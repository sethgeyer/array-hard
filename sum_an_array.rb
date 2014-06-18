array = [1, 2, 3]

total = array.inject(0) { |sum, element| sum += element}

puts total