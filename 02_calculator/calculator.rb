def add(n1,n2)
  n1 + n2
end



def subtract(n1,n2)
  n1 - n2
end



def sum(values)
  n = 0
  values.each do |i|
    n += i
  end
  return n
end



def multiply(values)
  n = 1
  values.each do |i|
    n *= i
  end
  return n
end



def power(num, pow)
  n = 1
  pow.times do 
    n *= num
  end
  return n
end



def factorial(i)
  n = 1
  (1..i).each do |num|
    n *= num
  end
  return n
end