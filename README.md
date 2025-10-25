# Recursive Bubble Sort

This is a custom, recursive implementation of the Bubble Sort algorithm written in Ruby.

Instead of swapping items directly within the original array (the usual iterative approach), this version uses a unique method: it creates a new, partially sorted array in every pass and uses recursion to repeat the process until the full array is sorted.

# Key Functions
- swap_if_larger: Compares two items and returns them in the correct order.
- iterate_once: Performs one full pass of the sorting logic, resulting in a brand new array.
- bubble_sort: The recursive driver that calls iterate_once repeatedly until the array stops changing (meaning it is fully sorted).

# Run Example

Input array: [9, 7, 5, 3, 1, -1, 4, -5, 2, 9, 0]
Sorted array: [-5, -1, 0, 1, 2, 3, 4, 5, 7, 9, 9]

To run this file, execute it from the terminal
ruby```
ruby main.rb
```
