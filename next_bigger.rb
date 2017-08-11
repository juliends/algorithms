def next_bigger n
  max = maxed n
  (n+1..max).each do |i| 
    return i if max == maxed(i) 
  end
  -1
end

def maxed n
  n.to_s.split('').sort.reverse.join.to_i
end

p next_bigger(9)
p next_bigger(12)
p next_bigger(2017)