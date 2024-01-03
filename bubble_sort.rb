def key(a)
  a
end

def less(a, b)
  return if a.nil? || b.nil?

  key(a) < key(b)
end

def bubble_sort(arr, l, r)
  j = l
  i = l
  for i in i..r do
    j = l
    for j in j..r do
      if less(arr[j + 1], arr[j])
        arr[j + 1], arr[j] = arr[j], arr[j + 1]
      end
    end
  end
end

test = [2, 10, 3, 1, 40, 50, 100, 0, 4]

bubble_sort(test, 0, 8)

puts test
