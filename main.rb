unsorted_array = [7, 3, 2, 56, 1, 9, 4]

def bubble_sort(array)
  comparing_items = array[(0..1)]
  if comparing_items.first > comparing_items.last
    array[0], array[1] = array[1], array[0]
  end

  array
end

p bubble_sort(unsorted_array)
