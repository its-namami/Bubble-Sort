require 'debug'

def swap_if_larger(comparing_items)
  sorted_items = comparing_items

  if comparing_items.first > comparing_items.last
    sorted_items = [comparing_items[1], comparing_items[0]]
  end

  sorted_items
end

def iterate_once(array)
  # until array_sorted?
  array.each.with_index.with_object([]) do |(_, index), sorted|
    next if array[index + 1] == nil

    last_item_or_standard = sorted.last || array[index]
    comparing_items = [last_item_or_standard, array[index + 1]]
    swapped_items = swap_if_larger(comparing_items)

    if comparing_items == swapped_items && index != 0
      sorted << swapped_items.last
    else
      larger_item = sorted.pop
      sorted << swapped_items.first
      sorted << case larger_item
      when nil then swapped_items.last
      else larger_item
      end
    end
  end
end

def bubble_sort(array)
  iteratted_array = iterate_once(array)
  array = bubble_sort(iteratted_array) unless array == iteratted_array
  array
end

unsorted_array = [9, 7, 5, 3, 1, -1, 4, -5, 2, 9, 0] 

puts "Input array: #{unsorted_array}"
puts "Sorted array: #{bubble_sort(unsorted_array)}"
