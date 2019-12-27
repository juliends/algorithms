def fizz_buzz
  (0..100).to_a.each do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      puts "FizzBuzz"
    elsif (num % 3) == 0
      puts "Fizz"
    elsif (num % 5) == 0
      puts "Buzz"
    else
      puts num
    end
  end
end

# fizz_buzz()

def fizz_enhanced(number)
  0.upto(number).each do |num|
    case
    when num % 15 == 0 then p "FizzBuzz"
    when num % 3  == 0 then p "Fizz"
    when num % 5  == 0 then p "Buzz"
    else p num
    end
  end
end

fizz_enhanced(100)
