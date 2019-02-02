# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #Loops through the array, summing all values into sum
  sum = 0
  arr.each{
    |a|
    sum += a
  }
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  # If array is empty, return 0, thenc check if array has only 1 value, in which written the element at 0
  # Otherwise, sort the array and add the last two digits
  sum = 0
  if arr.empty?
    return sum
  elsif arr.length == 1
    return arr.at(0)
  else
    sum =  arr.sort.at(arr.length-1) + arr.sort.at(arr.length-2)
  end
 sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # for each value in the array, loop through it. Create a new array by dropping all elements upto and including the current one
  # then add each element of the new array to the current value and check if it's equal to the input
  # for any sums that match, return true
  arr.each_with_index{ |a,i|
    if i == arr.length-1 then return false end
    newarr = arr.drop(i+1);
    newarr.each{
      |b|
      if a+b == n then return true end
    }
  }
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  # concatenate and return output
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #using regex, check if the first character is anything but letters
  #then check if its a vowel
  if s[/^[A-Za-z]/] == nil then return false end
  if s[/^[AEIOUaeiou]/] == nil then return true end
  false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #first check for empty string, then check for anything that is not 0 or 1 (non valid binary)
  # then check if its 0 or the last two digits are 00 (only case when binary is divisible by 4)
  if s.empty? then return false end
  if s[/[^10]/] != nil then return false end
  if s[/00$/] != nil or s == "0" then return true end
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
#Constructor method
def initialize(isbn, price)
#check for empty isbn
if isbn.empty? then raise ArgumentError end
#check if price is less than or equal to 0
if price <= 0 then raise ArgumentError end
  @isbn = isbn
  @price = price
end

#getter for price
def price 
  @price
end
#setter for price
def price=(pr)
  @price = pr
end

#getter for isbn
def isbn
  @isbn
end
#setter for isbn
def isbn=(is)
  @isbn = is
end

#return the price by concatenating with $ an
def price_as_string
  output = '%.2f' % price
  "$"+output.to_s
end
end
