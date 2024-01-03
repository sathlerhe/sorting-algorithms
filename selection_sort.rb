def key(a)
  return a
end

def less(a, b)
  return key(a) < key(b)
end

def selection_sort(_arr, l, r)
  l == r && return
  min = l
  i = l + 1

  for i in i..r do
    if less(_arr[i], _arr[min])
      min = i
    end
  end

  _arr[min], _arr[l] = _arr[l], _arr[min]
  selection_sort(_arr, l + 1, r)
end

test = [2, 10, 3, 1, 40, 50, 100, 0, 4]

selection_sort(test, 0, 8)

puts test
