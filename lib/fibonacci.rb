def fibs(number)
  iteration = 0
  fib = []
  while iteration < number
    fib << 0 if iteration.zero?
    fib << 1 if iteration.eql?(1)
    fib << fib[iteration - 1] + fib[iteration - 2] if iteration > 1
    iteration += 1
  end
  fib
end

p fibs(8)

def fibs_rec(number, fib = [0, 1])
  fib.length.between?(2, number - 1) ? fibs_rec(number, fib << fib[-1] + fib[-2]) : fib
end

p fibs_rec(8)
