friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
p friends.select { |friend| friend != 'Brian' }
p friends.reject { |friend| friend == 'Brian' }

p friends.include?('Tom')
p friends.include?('Leo')

numbers = [1,2,5,8,45,884,3,578]
p numbers.any? { |number| number.even? }
p numbers.any? { |number| number > 400 }
p numbers.any? { |number| number > 4000 }

p numbers.all? { |number| number == 400 }
p numbers.all? { |number| number > 0 }

p 1 == None
