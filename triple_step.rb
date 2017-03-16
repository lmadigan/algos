#a child is running up stairs and can hope either one, two, or three steps
#write an algo to check how many possible ways a kid can run up the stairs

def hop_steps(n)
  return 0 if n < 0
  return 1 if n == 0

  return 0 + hop_steps(n - 1) + hop_steps(n - 2) + hop_steps(n - 3)
end

print hop_steps(10)
