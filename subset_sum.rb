a = [1,2,3,4,5]  
results = []
target_number = 6
numOfCombinations = 0
n = 3

for i in 0..(a.length) do
  a.combination(i).each do |b|
    c = b.reduce(:+)
      if c == target_number && b.length == n
        numOfCombinations += 1
        results << b
        p b
        p c
      end
  end
end
p results
p numOfCombinations

# -------------------------------

# arr = (-5..5).to_a
# def find_zero_sum_groups(arr, n)
#   (1..arr.length).map { |length| arr.combination(length).to_a.select { |candidate| candidate.reduce(:+) == 0 }}.flatten(1)
# end
# p find_zero_sum_groups(arr, 0)