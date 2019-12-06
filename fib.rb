fib = [0]
number_next = 1

while number_next <= 100
  fib.push(number_next)
  number_next += fib[-2]
end
p fib