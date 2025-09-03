# Iteration fibs
def fibs(n)
  fibonacci = []
  x, y = 0, 1

  n.times do
    fibonacci << x
    x, y = y, x + y
  end

  fibonacci
end

# Recursive fib
def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  seq = fibs_rec(n - 1)
  seq << seq[-1] + seq[-2]

  seq
end

puts "Enter a number: "
n = gets.chomp.to_i
p fibs(n)
p fibs_rec(n)