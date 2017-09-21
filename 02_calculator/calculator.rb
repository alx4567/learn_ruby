#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum = 0.0
  if array.length > 0 then
    array.each do |item|
      sum += item
    end
  end
  return sum
end

def multiply(*array)
  mult = 1
  array.each { |i| mult *= i }
  mult
end

def power(a, b)
  a**b
end

def factorial(a)
  total = a
  while a > 1
    a -= 1
    total = total * a
  end
  total
end
