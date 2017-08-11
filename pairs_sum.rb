def sum_pairs(ints, s)
  seen = {}
  ints.each do |i|
    # p i
    # p [s-i, i]
    # p seen
    return [s-i, i] if seen[s-i]
    seen[i] = true
  end
  nil
end

array = [2, 4, 1, 3]
s = 5
p sum_pairs(array, s)

# Best solution =>
# As we iterate through the ints array, we keep track of numbers we have seen by populating the seen hash
# Lets say ints = [2, 4, 1, 3] & s = 5
# The first time through the loop if seen[s-i] obviously returns false because seen is empty
# Thus we seen[2] = true, now are hash looks like {2=>true}
# The second number in the loop is 4, and we know if a 1 was previously "seen" then we are finished.
# So we check if seen[5-4] which evaluates to false because the only number seen thus far is 2
# Thus seen[4] = true, now are has looks like {2=>true, 4=>true}
# The third number in the loop is 1, so lets check if a 4 has been "seen"
# if seen[5-4] evalues to true!!!, so we return [5-1,1] which equals [4,1] and we are done!

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