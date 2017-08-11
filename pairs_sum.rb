def sum_pairs(ints, s)
  (1...ints.size).each do |x|
    (0...x).each do |y|
      return [ints[y], ints[x]] if ints[x] + ints[y] == s
    end
  end
  nil
end

array = [1, 2, 3, 4, 1, 0]
s = 2
p sum_pairs(array, s)