def merge_sort(arr)
  # 0. Base case
  return arr if arr.length <= 1

  # 1. Divide
  mid = arr.length / 2
  left = merge_sort(arr[0, mid])
  right = merge_sort(arr[mid, arr.length])

  # 2. Conquer
  output = merge(left, right)
end

def merge(l, r)
  output = []
  until l.empty? || r.empty?
    output << if l.first <= r.first
                l.shift
              else
                r.shift
              end
  end
  # The order of `concat(l)` or `concat(r)` does not matters
  output.concat(l).concat(r)
end

p array = [7, 3, 8, 9, 1, 4, 23, 73, 2]
p merge_sort(array)

# def merge_sort(array)
#   if array.length <= 1
#     array
#   else
#     p mid = (array.length / 2).floor
#     p left = merge_sort(array[0..mid - 1])
#     p right = merge_sort(array[mid..array.length])
#     p merge(left, right)
#   end
# end

# def merge(left, right)
#   if left.empty?
#     right
#   elsif right.empty?
#     left
#   elsif left.first < right.first
#     [left.first] + merge(left[1..left.length], right)
#   else 
#     [right.first] + merge(right[1..right.length])
#   end
# end
