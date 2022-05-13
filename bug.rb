require 'pry'

sum = 2 + 2
name = 'John'
list = [1, 2, 3]

squared = list.each |i|
  i * 2
end

p squared