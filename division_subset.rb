# given an array of unique items, find the subset that has only numbers that will
# each two numbers will not sum to a given number

def division_subsets(arr, x)
  # find all subset of an array and then see which ones fit
  return 1 if arr.length == 1
  return 0 if arr.length == 0
  all_subs = subsets(arr)
  final = 0
  all_subs.each do |subb|
    if none_add?(subb, x) && subb.length > final
      final = subb.length

    end
  end
  final
end

def subsets(arr)
  return [[]] if arr.length == 0

  last = arr.pop
  subset = subsets(arr)

  subset + subset.map {|el| el + [last] }
end

def none_add?(arr, x)
    i = 0
    while i < arr.length
      i2 = 0
      while i2 < arr.length
        # puts (arr[i] + arr[i2])
        if ((arr[i] + arr[i2]) % x ) == 0
           return false
         end
        i2 += 1
      end
    i += 1
  end
  return true
end


arr = [770528134, 663501748, 384261537, 800309024, 103668401, 538539662,
  385488901, 101262949, 557792122, 46058493]
print division_subsets(arr, 5)
