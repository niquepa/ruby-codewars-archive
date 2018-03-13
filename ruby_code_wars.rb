#1  Remove vowels from string
def disemvowel(str)
  result = str.delete 'aeiouAEIOU'
  return result
end

#2  Shortest string in array
def find_short(s)
  s.split.map(&:size).min
end

#3   Breaking chocalate pieces algorithm, how many times do you have to break the "chocalate bar"
def break_chocolate(n, m)
  b = (n * m) - 1
  if b < 0
    return 0
  else
    return b
  end
end

#4   Return integers in descending order
def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end


#5   Write a function, persistence, that takes in a positive parameter num and returns
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

#6   Sum of the two smallest numbers in array
def sum_two_smallest_numbers(numbers)
  numbers.sort!
  return numbers[1] + numbers[0]
end

#7   Reject all array strings (names) that dont have the length of four, whom are your friends
def friend(friends)
   friends.reject { |a| a.length != 4 }
end

#8   Determines a prime number
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

#9   Return an array of all divisors execpt for 1 and n
def divisors(n)
  (2..n - 1).collect { |x| [x] if ((n/x) * x) == n}.compact.flatten
end

#10   Return sum, of multiples of 3 and 5 up to (number)
def solution(number)
  array = Array.new
  for x in 1..number - 1
    if x % 3 == 0 || x % 5 == 0
     array.push(x)
    end
  end
  return array.inject(0){ |sum , x | sum + x }
end


#11   Write a function that will find all the anagrams of a word from a list.
#You will be given two inputs a word and an array with words. You should
#return an array of all the anagrams or an empty array if there are none.
def anagrams(word, words)
  words.select { |w| w.chars.sort.join == word.chars.sort.join }
end


#12   (), ({}) is correct, (} is incorrect
def group_check s
  loop do
    return true if s.empty?
    c = s.gsub /(\{\})|(\[\])|(\(\))/, ''
    return false if c == s
    s = c
  end
end

#13   Determines even or odd
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


#14   Count the number of times they hoola hoop, return string accordingly
def hoop_count n
	(n < 10) ? "Keep at it until you get it" : "Great, now move on to tricks"
end

#15   Finding the new value in an array of integers, when provided the average of integers that needs to be attained
def new_avg(arr, newavg)
    if (arr == []) then sm = 0  else sm = arr.inject{ |sum,x| sum + x } end
    add = (arr.length + 1) * newavg - sm
    if (add > 0) then
        return add.ceil
    end
    raise ArgumentError, "Expected New Average is too low"
end

# 16   return a list of integers 1..n
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

#18   With these arguments integer integer and operator, make it run... (.send is cool, just learned it)
def basic_op(operator, value1, value2)
  return value1.send(operator, value2)
end


#19   If string is < 5 turn to 0. 5 and up, turn to 1
def fake_bin(s)
  s.chars.map { |s| s < "5" ? "0" : "1" }.join
end

def fake_bin(s)
  s.tr('1-9', '00001')
end

def fake_bin(str)
  str.split('').map{ |x| x.to_i < 5 ? 0 : 1 }.join
end

#20   How many bottles do you have to buy to make the discount worth it for the holiday
def duty_free(price, discount, holiday_cost)
   total = holiday_cost / (price * (discount / 100.to_f))
   return total.to_i
end

#21   Picking flower petals, how much does she love you, she loves you not, etc...
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

#23   Count positive numbers, sum negative numbers in array, and return [0][1] back
def count_positives_sum_negatives(lst)
  positives, negatives = lst.partition(&:positive?)
  [ positives.length, negatives.inject(0, &:+) ]
end

#24   Replace all vowels with '!'
def replace(s)
  s.gsub(/[aeiouAEIOU]/, '!')
end

#25   Get volume of a cube
def get_volume_of_cuboid(length, width, height)
  return length * width * height
end

#26   Remove smallest and largest values from array and get the sum of whats left, clumsy first try
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

#27   Special answer for a special someone
def greet(name)
  if name == "Johnny"
    return "Hello, my love!"
  else
    return "Hello, #{name}!"
  end
end

#28   Celsius to romer formula
def celsius_to_romer(temp)
 return temp * 21/40.to_f + 7.5
end

#29   Approx_root sqrt
def approx_root(n)
  Math.sqrt(n).round(2)
end

#30   Take 2 strings and remove non unique characters, then sort the new string alphabetically
def longest(a1, a2)
  b = a1 + a2
  target = Array.new
  b.split('').each {|x| target << x unless target.include?(x) }
  return target.sort.join('')
end

def longest(a, b)
  (a+b).chars.uniq.sort.join
end

#    (((Issue with test cases being incongruent with description, I noted on codewars)))
#31   Return first half of the letters of a string, but improved a little because of test case issue
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


#32   Return sum of positive integers in array, 0 if empty
def positive_sum(arr)
  arr.delete_if { |x| x < 0 }
  arr.empty? ? 0 : arr.inject(:+)
end

def positive_sum(arr)
  arr.select{|x| x > 0}.reduce(0, :+)
end

#33   Take a number and seperate the digits, push into an array, in reversed order
def digitize(n)
  n.to_s.chars.reverse.map(&:to_i)
end

#34   Change a negative integer to its ABS, change positive integer to negative
def opposite(n)
 n <= 0 ? n.abs : -n
end

#35   Create a string representing a dollar amount from an integer or float
def format_money(amount)
  a = sprintf '%.2f', amount
  "$" + a
end

def format_money(amount)
  '$%.2f' % amount
end


#36   Find minimum and maximum values in a list
def min(list)
  list.sort[0]
end

def max(list)
  list.sort[-1]
end

#37  Find (nth) digit of a number
def find_digit(num, nth)
  nth <= 0 ? -1 : num.to_s.split('')[-nth].to_i
end

#38   Average of an array of integers, returned as whole number
def get_average(marks)
  average = marks.inject{ |sum, el| sum + el }.to_f / marks.size
  average.to_i
end

def get_average(marks)
  marks.inject(:+) / marks.length
end

#39   Concat arrays, sorted and unique values
def merge_arrays(a, b)
  (a | b).sort
end

def merge_arrays(a, b)
  c = a.concat b
  c.sort.uniq
end

#40   Remove all odd numbers from array
def remove_odd_numbers_from_array(a)
  a.reject(&:odd?)
end

#41   Delete every other element in array
def remove_every_other(arr)
  b = Array.new
  arr.map.with_index{|v,i| i % 2 == 0 ? b << v : v }
  return b
end

def remove_every_other(arr)
  arr.select.with_index { |_,idx| idx.even? }
end

#42    Make sure the watermelon can be devided so that each (2) people can have an even number of pieces
def divide(weigth)
  weigth % 2 == 0 && weigth > 2 ? true : false
end

def divide(weight)
  weight > 2 && weight.even?
end

#43   Fix the operation so that it accurately calculates division
def divide_numbers x, y
  x / y.to_f
end

def divide_numbers x, y
  x.fdiv y
end


# 44   Multiply (n) by 5-raised to the power of the number of digits in (n)
def multiply(n)
  n < 0 ? n * 5 ** (n.to_s.length - 1) : n * 5 ** n.to_s.length
end

#45   Round down with .floor
def litres(time)
  time.floor / 2
end

#46   Remove first and last element of an array
def remove_char(s)
  s.slice(1..-2)
end

#47    Remove the first character from string
def get_age(age)
  age.split('').slice(0).to_i
end

def get_age(a)
  a[0].to_i
end

#47  Using MathPI
def annulus_area(r)
  (Math::PI * (r / 2.0) ** 2).round(2)
end


# 48   Given two points P and Q, output the symmetric point of
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


#50   Find the average between each index (integer) of array
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

#51  Find the Barycenter of a triangle
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

#52  Find lowest integer that doesnt belong to array, greater than 0
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

#53  Find the number of times a character is repeated (char) in string (string)
def count_char(string, char)
  string.downcase.chars.count(char.downcase)
end

def count_char(string, char)
  string.scan(/#{char}/i).size
end

# 54  Find and print aspect ratio of any give two numbers
def calculate_ratio(w,h)
  a = w / h.to_f.rationalize(0.01)
  a.to_s.length > 3 && a.to_s.length < 5 ? "#{a.to_s.split('')[0]}#{a.to_s.split('')[1]}:#{a.to_s.split('')[03]}#{a.to_s.split('')[4]}" : "#{a.to_s.split('')[0]}:#{a.to_s.split('')[2]}"
end


#55   Given a string of integers, count how many times that
#   integer repeats itself, then return a string showing the count and the integer.
#   countMe('211213') will return '1221121113' (1 time 2, 2 times 1, 1 time 2, 1 time 1, 1 time 3)
def count_me(data)
  return '' if data.to_i.to_s != data
  data_string = data.to_s
  count = 1
  output = ''

  i = 0
  while i < data_string.length - 1
    if data_string[i] == data_string[i + 1]
    count += 1
    else
    output << count.to_s << data_string[i]
    count =1
    end
  i += 1
  end
  output << count.to_s << data_string[i]
end

def count_me(data)
  return "" unless /^\d+$/ === data
  data.chars.chunk { |c| c }.inject("") { |memo, (c, a)| memo << "#{a.length}#{c}" }
end


# 56  Find the maximum difference in length between 2 strings in 2 different arrays
def mxdiflg(a1, a2)
	a1.empty? || a2.empty? ? -1 : a2.max_by(&:length).length - a1.min_by(&:length).length
end

def mxdiflg(a1, a2)
  a1 = a1.map(&:size)
  a2 = a2.map(&:size)

  [a1.max - a2.min, a1.min - a2.max].map(&:abs).max rescue -1
end

# 57   Finding approximate square roots.
#     I couldnt figure out how to deal with rounding to different degrees per test.
def approx_root(n)
  base = Math.sqrt(n).floor
  lowsq = base ** 2
  highsq = (base + 1) ** 2
  (base + (n - lowsq) / (highsq - lowsq).to_f).round(2)
end

# 58   Calculate tips, r == three grades of quality of service ( 1 , 0 , -1)
def calc_tip(p, r)
  t = (p.to_f / 10).round.to_i

  t = t+1 if r == 1
  t = t-1 if r == 0
  t = t / 2 - 1 if r == -1

  [0, t].max
end

# 59  Find min and max integers from a string of numbers
def high_and_low(numbers)
  "#{numbers.split(' ').map(&:to_i).max} #{numbers.split(' ').map(&:to_i).min}"
end

def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end

# 60   Extract numbers from a string and find the sum
def sum_from_string(str)
  str.gsub(/[^0-9]/, ' ').split(' ').map(&:to_i).inject(0, :+)
end

# 61   Count duplicate characters in string
def duplicate_count(text)
  text.each_char.group_by(&:itself).count{|_, v| v.length > 1}
end

def duplicate_count(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

#62   Round numbers in array to the nearst multiple of 5
def round_to_five(numbers)
 numbers.map{|number| (number/5.0).round * 5}
end


#63  Reverse and invert integers in array, throw out all other elements
def reverse_invert(array)
  i = 0
  ints = []
  while i < array.count
    ints << array[i] if array[i].is_a? Integer
    i += 1
  end

  ints = ints.map do |x|
    if x.to_s.length > 1 && x < 0
      x.to_s.reverse.to_i
    elsif x.to_s.length > 1 && x > 0
      x.to_s.reverse.to_i * -1
    else
      x * -1
    end
  end
end

def reverse_invert array
  array.select{|n|n.is_a? Integer }.map{|i| (-i).to_s.sub(/\d+/,&:reverse).to_i }
end

#64  If the number has an integer square root, take this, otherwise square the number. / Alternate Solutions
def square_or_square_root(arr)
  new_arr = Array.new
  arr.each do |i|
    Math.sqrt(i) % 1 == 0 ? new_arr << Math.sqrt(i).to_i : new_arr << i ** 2
  end
  new_arr
end

def square_or_square_root(arr)
  arr.map { |number| Math.sqrt(number) % 1 == 0 ? Math.sqrt(number) : number ** 2}
end

def square_or_square_root(arr)
  arr.map do |n|
    sqrt = Math.sqrt(n)
    sqrt % 1 == 0 ? sqrt : n**2
  end
end

#65 Determines whether object (prod) is the product of two consecutive Fibonacci numbers, returns array
# containing the two numbers that are == (prod) or first that are >= (prod),
# as well as (true) or (false) in arr[2] - And refactored alternate solution
def productFib(prod)
  new = []
  arr = [0 ,1]
  while arr[-1] * arr[-2] < prod
    arr << arr[-1] + arr[-2]
  end
  new << arr[-2]
  new << arr[-1]
  arr[-1] * arr[-2] == prod ? new << true : new << false
end

def productFib(prod)
  a, b = [0, 1]
  while prod > a * b
    a, b = [b, a + b]
  end
  [a, b, prod == a * b]
end

#66 Create function that takes one positive three digit integer and rearanges its
#digits to get maximum possible number. Assume that argument is integer. Return null
#(nil for ruby) if argument is not valid.
def max_redigit(num)
  return nil if num.to_s.length != 3
  num.to_s.chars.sort.reverse.join.to_i
end

#67You have to search all numbers from inclusive 1 to inclusive a given number x,
#that have the given digit d in it.
# The value of d will always be 0 - 9.
# The value of x will always be greater than 0.
#
# You have to return as an array
#
# the count of these numbers,
#
# their sum
#
# and their product.
def numbers_with_digit_inside(x, d)
  d = d.to_s
  vals = []
  (1..x).each do |i|
    vals << i if i.to_s.include?(d)
  end
  return [0,0,0] unless vals.size > 0
  [vals.size,
   vals.inject(0) { |s,v| s += v },
   vals.inject(1) { |p,v| p *= v }
  ]
end

def numbers_with_digit_inside(x, d)
  nums = ('1'..x.to_s).select { |num| num.include?(d.to_s) }.map(&:to_i)
  [nums.size, nums.reduce(0, :+), nums.reduce(:*) || 0]
end

#68 Write a function which removes from string all non-digit
#   characters and parse the remaining to number. E.g: "hell5o wor6ld" -> 56
def get_number_from_string(s)
  s.scan(/\d/).join('').to_i
end

#69 Given a string containing a list of integers separated by commas,
#   write the function string_to_int_list(s) that takes said string and returns
#   a new list containing all integers present in the string, preserving the order.
def string_to_int_list(s)
  s.split(',').map { |i| i == '' ? nil : i.to_i }.compact
end

def string_to_int_list(s)
  s.scan(/-?\d+/).map(&:to_i)
end

#70 Find the last element of a list.
def last(*args)
  args[-1].is_a?(Integer) ? args.flatten[-1] : args[-1][-1]
end

# 71 A palindrome is a word, phrase, number, or other sequence of characters
# which reads the same backward or forward. Allowances may be made for adjustments to
# capital letters, punctuation, and word dividers.
def is_palindrome(str)
  str.to_s == str.to_s.reverse ? true : false
end

# 72 You are going to be given a string.
# Your job is to return that string in a certain order that I will explain in  (README DESCRIPTION):
def reverse_fun(string)
  reversed = ''
  str = string.chars
  string.length.times { reversed.concat str.reverse!.delete_at 0 }
  reversed
end

# 73 We need a function that can transform a string into a number.
def string_to_number(s)
  s.to_i
end

# 74  You start at the first number.
#  If this number x is smaller than 3, take this number x direct
#   for the new array and continue with the next number.
#  If this number x is greater than 2, take the next x numbers (inclusive this number) as a
#   sub-array in the new array. Continue with the next number AFTER this taken numbers.
#  If there are too few numbers to take by number, take the last available numbers.
def unflatten(flat_array)
  new_array = []
  until flat_array.empty?
    num = flat_array.shift
    num < 3 ? new_array << num : new_array << [num].push(flat_array.shift(num-1)).flatten
  end
  new_array
end


#75   (from CodeFights last month) Write a function that returns the century for the given year (round up if necessary).
def centuryFromYear(year)
    year % 100 == 0 ? year / 100 : year / 100 + 1
end

#76   (from CodeFights last month) Write a function that checks whether input is a palindrome.
def checkPalindrome(inputString)
    if inputString.split('').reverse == inputString.split('')
        return true
    else
        false
    end
end

#77 You will be given two dimensions, imagine a rectangle, write an algorithm that returns in an array a list of
#   SQUARES that == the area of the rectangle
def sqInRect(lng, wdth)
  answer = []
  if lng == wdth
    return nil
  end
  while lng > 0 && wdth > 0
    answer.push([lng, wdth].min)
    if lng >= wdth
      lng -= wdth
    else
      wdth -= lng
    end
  end
  return answer
end

# 78 Given array with False/True in every index, count the number of True cases in the array. Simple.
def countSheeps array
  count = 0
  for x in array do
    x == true ? count +=1 : count + 0
  end
  return count
end

# 79 One flowers petals are even and one flowers petals are odd == true, else false
def lovefunc( flower1, flower2 )
  (flower1 + flower2).odd?
end

# 80 Write a function numberJoy() which tests if a positive integer n is Harshad,
# and returns True if the product of its digit sum, and its digit sum reversed, equals n. Otherwise return False.
def number_joy(n)
  dig = n.to_s.split('').map(&:to_i)
  sum = dig.inject(:+)
  sum * sum.to_s.reverse.to_i == n ? true : false
end

#  81 "Identical Elements" - compare arrays, return boolean depending whether or not they contain any same values.
def duplicate_elements(m, n)
  !(n & m).empty?
end

#  82 "Plural" - We need a simple function that determines if a plural is needed or not.
#     It should take a number, and return true if a plural should be used with that number or false if not.
#     This would be useful when printing out a string such as 5 minutes, 14 apples, or 1 sun.
def plural(n)
  n == 1 ? false : true
end

#  83 "Sort and Star" - You will be given an vector of string(s).
#     You must sort it alphabetically (case-sensitive!!) and then return the first value.
#     The returned value must be a string, and have '***' between each of its letters.
def two_sort(s)
   s.sort[0].split('').flat_map { |x| [x, "***" ] }.tap(&:pop).join()
end
#  HAHA - thats a good refactor
def two_sort(s)
  s.sort[0].chars.join("***")
end

#  84 "Get list sum recursively" - Write function sumR which returns the sum of values in a given list.
#     Try no to cheat and provide recursive solution.
def sum_r(x)
  return 0 if x.empty?
  x[0] + sum_r(x[1..-1])
end

#  85 "Rearange Number to Get its Maximum" - Create function that takes one positive three digit integer
#     and rearranges its digits to get maximum possible number. Assume that argument is integer.
#     Return null (nil for ruby) if argument is not valid.
def max_redigit(num)
  if num > 99 && num.to_s != num.to_s.reverse && num < 1000
    num.to_s.split('').sort.reverse.map(&:to_i).join.to_i
  else
    nil
  end
end

#  86 "Circle area inside square" - Turn an area of a square in to an area of a circle that fits perfectly inside the square.
def square_area_to_circle(size)
  return size * Math::PI / 4
end

#  87 "The Mean of Two Means" - . The function should return the mean between the mean of the the first
#   x elements of the array and the mean of the last y elements of the array.
def get_mean(arr, x, y)
  return -1 if x < 2 || y > arr.size || (y <= 1)
  ((arr[0..(x - 1)].inject(:+) / x.to_f + arr[-y..-1].inject(:+) / y.to_f) / 2.0)
end

#  88 (LVL 8) "Is Upcase" - Create a method is_uppercase() to see whether the string is ALL CAPS.
class String
  def is_upcase?
    self.upcase == self
  end
end

#  89 (LVL 8) "Remove exclamation marks" - Write function RemoveExclamationMarks which removes all exclamation marks from a given string.
def remove_exclamation_marks(s)
  s.delete("!")
end

#  90 (LVL 8) "Square(n) Sum" - Complete the squareSum method so that it squares each number passed into it and then sums the results together.
def squareSum(numbers)
  number.map { |i| i ** 2 }.reduce(0, :+)
end

#  91 (LVL 8) "Grasshopper - Basic Function Fixer" - I created this function to add five to any number
# that was passed in to it and return the new value. It doesn't throw any errors but it returns the wrong number.

# Can you help me fix the function?

def addFive(num)
  num += 5
end
