#finding the ith fib number, dynamically with a cache
def fibonacci(i)
  return i if i == 0
  return i if i == 1

  cache = []
  cache[0] = 0
  cache[1] = 1
  int = 2
  while int < i
    cache[int] = cache[int - 1] + cache[int - 2]
    int += 1
  end
  return cache[i - 1] + cache[i - 2]
end

#store as varaibles, so dont need other data stores

def fib(i)
  return 0 if i == 0

  a = 0
  b = 1
  int = 2
  while int < i
    c = a + b
    a = b
    b = c
    int += 1
  end
  return a + b
end


puts fib(7)
puts fibonacci(1)
