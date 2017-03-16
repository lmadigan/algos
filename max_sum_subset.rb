def get_best_sum(arr)
  best = 0
  best_now = 0
  start_index = -1
  end_index = -1
  current_start = -1
  i = 0
  value = 0
  while i < arr.length
    value = best_now + arr[i]
    if value > 0
      if best_now == 0
        current_start = i
      end
      best_now = value
    else
      best = 0
    end
    puts value
    if value > best
      best = value
      start_index = current_start
      end_index = i
    end

    i += 1
  end
  return end_index, start_index
end

p get_best_sum([3,4,-1,5,6,0])
