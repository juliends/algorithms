class Array
  def quick_sort
    return [] if empty?
    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

array = [1,4,1,3,4,1,3,3]
p array.quick_sort

# def quick_sort(array)
#   return [] if array.empty?
# end
