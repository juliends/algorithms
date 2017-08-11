def sum_pairs(ints, s)
  seen = {}
  for i in ints do
    # p i
    # p [s-i, i]
    # p seen
    return [s-i, i] if seen[s-i]
    seen[i] = true
  end
  nil
end

array = [10, 4, 1, 3, 7, 0]
s = 4
p sum_pairs(array, s)

# -----------------------------------------------

# def sum_pairs(ints, s)
#   (1...ints.size).each do |x|
#     (0...x).each do |y|
#       return [ints[y], ints[x]] if ints[x] + ints[y] == s
#     end
#   end
#   nil
# end

# -----------------------------------------------

# def sum_pairs(ints, s)
#   p ints
#   p s
#   p result =  ints.combination(2).select { |x, y| x + y == s }.flatten
# end