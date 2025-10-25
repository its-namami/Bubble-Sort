unsorted_array = [7, 3, 2, 56, 1, 9, 4]

def swap_if_larger(comparing_items)
  if comparing_items.first > comparing_items.last
    comparing_items[0], comparing_items[1] = comparing_items[1], comparing_items[0]
  end

  comparing_items
end

def bubble_sort(array)
  comparing_items = array[(0..1)]

  array = swap_if_larger(comparing_items) + array[(2..-1)]
end

p bubble_sort(unsorted_array)
