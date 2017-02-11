#1  take out vowels from string
def disemvowel(str)
  result = str.delete 'aeiouAEIOU'
  return result
end

#2  shortest string in array
def find_short(s)
  s.split.map(&:size).min
end

#3   breaking chocalte pieces algorithm
def break_chocolate(n, m)
  b = (n * m) - 1
  if b < 0
    return 0
  else
    return b
  end
end

#4    return integers in descending order
def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end


#5    Write a function, persistence, that takes in a positive parameter num and returns
#its multiplicative persistence, which is the number of times you must multiply the
#digits in num until you reach a single digit.
def persistence(n)
  a = 0
  while n.to_s.length > 1
    array = n.to_s.split("")
    a += 1
    n = array.inject { |y,x| y.to_i * x.to_i }
  end
  a
end

#6    sum of the two smallest numbers in array
def sum_two_smallest_numbers(numbers)
  numbers.sort!
  return numbers[1] + numbers[0]
end

#7    reject all array names that dont have the length of four, whom are your friends
def friend(friends)
   friends.reject { |a| a.length != 4 }
end

#8     determines a prime number
def isPrime(num)
  if num < 2
    return false
  end
  for d in 2..(num - 1)
    if (num % d) == 0
    return false
    end
  end
  return true
end

#9    return an array of all divisors execpt for 1 and n
def divisors(n)
  (2..n - 1).collect { |x| [x] if ((n/x) * x) == n}.compact.flatten
end

#10    return sum of a multiples of 3 and 5 up to (number)
def solution(number)
  array = Array.new
  for x in 1..number - 1
    if x % 3 == 0 || x % 5 == 0
     array.push(x)
    end
  end
  return array.inject(0){ |sum , x | sum + x }
end


#11    Write a function that will find all the anagrams of a word from a list.
#You will be given two inputs a word and an array with words. You should
#return an array of all the anagrams or an empty array if there are none.
def anagrams(word, words)
  words.select { |w| w.chars.sort.join == word.chars.sort.join }
end


#12    (), ({}) is right, (} is wrong
def group_check s
  loop do
    return true if s.empty?
    c = s.gsub /(\{\})|(\[\])|(\(\))/, ''
    return false if c == s
    s = c
  end
end

#13    determines even or odd
def even_or_odd(number)
  if number % 2 == 0
    return "Even"
  else
    return "Odd"
  end
end

def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end

def even_or_odd(number)
  (number % 2 == 0) ? "Even" : "Odd"
end


#14    count the number of times they hoola hoop, return string accordingly
def hoop_count n
	(n < 10) ? "Keep at it until you get it" : "Great, now move on to tricks"
end

#15    finding the new value in an array when provided the average that needs to be attaind
def new_avg(arr, newavg)
    if (arr == []) then sm = 0  else sm = arr.inject{ |sum,x| sum + x } end
    add = (arr.length + 1) * newavg - sm
    if (add > 0) then
        return add.ceil
    end
    raise ArgumentError, "Expected New Average is too low"
end

# 16    return a list of integers 1..n
def pre_fizz(n)
  x = Array.new
  for a in 1..n
    x.push(a)
  end
  return x
end

def pre_fizz(n)
  return array = [*1..n]
end

def pre_fizz(n)
   [*(1..n)]
end

def pre_fizz(n)
  (1..n).to_a
end


#17   Reverse words in a string (forgot split creates an array, was making nested arrays prior
#to solution)
def reverse(string)
  return string.split.reverse.join(' ')
end

#18   with these arguments integer integer and operator, make it run... (.send is cool, just learned it)
def basic_op(operator, value1, value2)
  return value1.send(operator, value2)
end


#19    in string if < 5 turn to 0, 5 and up turn to 1
def fake_bin(s)
  s.chars.map { |s| s < "5" ? "0" : "1" }.join
end

def fake_bin(s)
  s.tr('1-9', '00001')
end

def fake_bin(str)
  str.split('').map{ |x| x.to_i < 5 ? 0 : 1 }.join
end

#20    how many bottles do you have to buy to make the discount worth it for the holiday
def duty_free(price, discount, holiday_cost)
   total = holiday_cost / (price * (discount / 100.to_f))
   return total.to_i
end

#21    picking flower petals, how much does she love you, she loves you not, etc...
def how_much_i_love_you(nb_petals)
  how_much = {
    1 => "some",
    2 => "a little",
    3 => "a lot",
    4 => "passionately",
    5 => "tons",
    6 => "not at all",
    7 => "I love you"
  }
  return how_much[nb_petals]
end

def how_much_i_love_you(nb_petals)
  options = ["I love you", "a little", "a lot", "passionately", "madly", "not at all"]
  options[(nb_petals-1) % options.size]
end

#22
# Test.assert_equals(remove("Hi!") , "Hi")
# Test.assert_equals(remove("Hi!!!") ,"Hi!!")
# Test.assert_equals(remove("!Hi") , "!Hi")
# Test.assert_equals(remove("!Hi!") , "!Hi")
# Test.assert_equals(remove("Hi! Hi!") , "Hi! Hi")
# Test.assert_equals(remove("Hi") , "Hi")
def remove(s)
s.chomp('!')
end

#23    count positive numbers, sum negative number in array, and return [0][1] back
def count_positives_sum_negatives(lst)
  positives, negatives = lst.partition(&:positive?)
  [ positives.length, negatives.inject(0, &:+) ]
end

#24 replace all vowels with '!'
def replace(s)
  s.gsub(/[aeiouAEIOU]/, '!')
end

#25    get volume of a cube
def get_volume_of_cuboid(length, width, height)
  return length * width * height
end

#26  remove smallest and largest values from array and get the sum of whats left, clumsy first try
def sum_array(arr)
  if arr == [] || arr == nil
    return 0
  end
  arr.sort!.delete_at(0)
  if arr == [] || arr == nil
    return 0
  end
  arr.delete_at(arr.index(arr.max))
  return arr.inject(0, :+)
end

def sum_array(arr)
  if arr.kind_of?(Array) and arr.length > 2
    arr.inject(:+) - arr.min - arr.max
  else
    0
  end
end

#27    special answer for a special someone
def greet(name)
  if name == "Johnny"
    return "Hello, my love!"
  else
    return "Hello, #{name}!"
  end
end

#28   celsius to romer formula
def celsius_to_romer(temp)
 return temp * 21/40.to_f + 7.5
end

#29    approx_root sqrt
def approx_root(n)
  Math.sqrt(n).round(2)
end

#30  take 2 strings and remove non unique characters, then sort the new string alphabetically
def longest(a1, a2)
  b = a1 + a2
  target = Array.new
  b.split('').each {|x| target << x unless target.include?(x) }
  return target.sort.join('')
end

def longest(a, b)
  (a+b).chars.uniq.sort.join
end

#(((Issue with test cases being incongruent with description, I noted on codewars)))
#31   return first half of the letters of a string, but improved a little because of test case Issue
def testit(s)
  a = s.length / 2
  if s.length <= 1
    return s
  elsif s.length == 2
    return s.slice(0)
  else
    s.slice(s.length / 2..-1)
  end
end


#32    Return sum of positive integers in array, 0 if empty
def positive_sum(arr)
  arr.delete_if { |x| x < 0 }
  arr.empty? ? 0 : arr.inject(:+)
end

def positive_sum(arr)
  arr.select{|x| x > 0}.reduce(0, :+)
end

#33    take a number and seperate the digits, push into an array, in reversed order
def digitize(n)
  n.to_s.chars.reverse.map(&:to_i)
end

#34    change a negative integer to its ABS, change positive integer to negative
def opposite(n)
 n <= 0 ? n.abs : -n
end

#35   create a string representing a dollar amount from an integer or float
def format_money(amount)
  a = sprintf '%.2f', amount
  "$" + a
end

def format_money(amount)
  '$%.2f' % amount
end


#36   find minimum and maximum values in a list
def min(list)
  list.sort[0]
end

def max(list)
  list.sort[-1]
end

#37  find (nth) digit of a number
def find_digit(num, nth)
  nth <= 0 ? -1 : num.to_s.split('')[-nth].to_i
end

#38    average of an array of integers, returned as whole number
def get_average(marks)
  average = marks.inject{ |sum, el| sum + el }.to_f / marks.size
  average.to_i
end

def get_average(marks)
  marks.inject(:+) / marks.length
end

#39 concat arrays, sorted and unique values
def merge_arrays(a, b)
  (a | b).sort
end

def merge_arrays(a, b)
  c = a.concat b
  c.sort.uniq
end

#40    remove all odd numbers from array
def remove_odd_numbers_from_array(a)
  a.reject(&:odd?)
end

#41 delete every other element in array
def remove_every_other(arr)
  b = Array.new
  arr.map.with_index{|v,i| i % 2 == 0 ? b << v : v }
  return b
end

def remove_every_other(arr)
  arr.select.with_index { |_,idx| idx.even? }
end

#42    make sure the watermelon can be devided so that each (2) people can have an even number of pieces
def divide(weigth)
  weigth % 2 == 0 && weigth > 2 ? true : false
end

def divide(weight)
  weight > 2 && weight.even?
end

#43   fix the operation so that it accurately calculates division
def divide_numbers x, y
  x / y.to_f
end

def divide_numbers x, y
  x.fdiv y
end


# 44 multiple (n) by 5-raised to the power of the number of digits in n
def multiply(n)
  n < 0 ? n * 5 ** (n.to_s.length - 1) : n * 5 ** n.to_s.length
end

#45    round down with .floor
def litres(time)
  time.floor / 2
end

#46   remove first and last element of an array
def remove_char(s)
  s.slice(1..-2)
end

#47    remove the first character from string
def get_age(age)
  age.split('').slice(0).to_i
end

def get_age(a)
  a[0].to_i
end

#47 Using MathPI
def annulus_area(r)
  (Math::PI * (r / 2.0) ** 2).round(2)
end


# 48    Given two points P and Q, output the symmetric point of
# point P about Q. Each argument is a two-element array of integers
# representing the point's X and Y coordinates. Output should be in
# the same format, giving the X and Y coordinates of point P1. You do
# not have to validate the input.
def symmetric_point(p, q)
  a = Array.new
  i = 1
  new = (p).zip(q).flatten
  while i <= 3 do
    a << new[i] + (new[i] - new[(i - 1)])
    i += 2
  end
  return a
end

def symmetric_point(p, q)
    dx = q[0] - p[0]
    dy = q[1] - p[1]
    p1 = [dx + q[0], dy + q[1]]
    return p1
end

def symmetric_point(p, q)
 x = (q[0] - p[0]) + q[0]
 y = (q[1] - p[1]) + q[1]
    return [x, y]
end


# 49   So this function should return the first pair of two prime numbers
# spaced with a gap of g between the limits m, n if these numbers exist otherwise
# nil or null or None or Nothing (depending on the language). In C++ return in such a case {0, 0}.
def gap(g, m, n)
  m = m+1 if m % 2 == 0
  (m..n).each do |i|
    next unless is_prime(i)
    return [i, i+g] if is_prime(i+g) && (i+1..i+g-1).none? { |num| is_prime num }
  end
  nil
end

def is_prime(n)
  (2..Math.sqrt(n).round).each { |i| return false if n % i == 0 }
  true
end


#50   Find the average between each index of array
def averages(arr)
  if arr == nil || arr.size <= 1
    return []
  else
    result = []
    arr.take(arr.size - 1).each_with_index do |value,index|
      avg = (value + arr[index + 1]) / 2.0
      avg = avg.to_i if avg == avg.to_i
      result << avg
    end

    return result
  end
end

#51 Find the Barycenter of a triangle
def bar_triang(p1,p2,p3)
  barycenter = Array.new
  topx = p1[0] + p2[0] + p3[0]
  topy = p1[1] + p2[1] + p3[1]
  x = topx.to_f / 3
  y = topy.to_f / 3
  barycenter << x.round(4)
  barycenter << y.round(4)
  return barycenter
end

def bar_triang(p1,p2,p3)
  x = (p1[0] + p2[0] + p3[0]) / 3.0
  y = (p1[1] + p2[1] + p3[1]) / 3.0
  [x.round(4),y.round(4)]
end

# find lowest integer that doesnt belong to array, greater than 0
def next_id(arr)
  x = 0
  while x <= arr.max + 1 do
    if !arr.include?(x)
      return x
    end
    x += 1
  end
end

def next_id(arr)
  ([*(0..arr.size)] - arr).min
end

def next_id(arr)
  i = 0
  loop do
    return i unless arr.include?(i)
    i += 1
  end
end

def next_id(arr)
  a = 0
  while arr.include?(a)
    a += 1
  end
  a

end
