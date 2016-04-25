#########################
#### USING ARGUMENTS ####
#########################
def say_hello()
  # returns 'hello'
  "hello"
end
def echo(str)
  # returns the input string
  str
end
def eddie_izzards_height(heels=0)
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result
  67 + heels

end
def how_many_args(*arg)
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args
  arg.length

end
def find_answer(opt = {})
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
  opt[:answer]
end
##############################
#### MANIPULATING STRINGS ####
##############################
def first_char(word)
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word
  word.chars[0].downcase
end
def polly_wanna(word)
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated
  word*3
end
def count_chars(word)
  # takes in a word
  # returns the number of characters in the word
  word.length
end
def yell(message)
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message
  message.upcase + "!"
end
## STRETCH ##
def to_telegram(message)
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message
  message.gsub(/[.]/, " STOP")
end

def spell_out(str)
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
  str.downcase.split("").join("-")
end

def seperate(str, seperator = "-")
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
  if str.length == 1
    return str
  end
  for i in 1..str.length do
    if i % 2 != 0
      str.insert(i, seperator)
    end
  end
  str
end
## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words

def palindrome_word?(word)
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false
  if word.downcase == word.downcase.reverse
    true
  else false
  end

end

## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

def is_vowel(char)
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

  if char.class != String || char.length != 1
    return false
  else
    vowels = "aeiou"
    vowels.include? char.downcase
  end
end

def add_period(str)
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence

  punctuation = ".,?!"
  if !punctuation.include?(str[-1])
    str += "."
  else
    str
  end
end


###########################
#### LOOPS & ITERATORS ####
###########################
def count_spaces (str)
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces
  count = 0
  str.each_char {|c| count = count + 1 if c ==" " }
  count
end
def string_lengths(arr)
  # takes in an array of strings
  # returns an array containing the lengths of the strings
  arr.map { |e| e.length  }
end
def remove_falsy_values(list)
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list
  list.keep_if {|e| e!=nil && e!=false}
end

def exclude_last(input)
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

  if input.class == Array
    input.delete(input[-1])
    input
  else
    input.delete(input[-1])
  end
end

def exclude_first(input)
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

  newStr = ""
  newArr = []
  resultEnd = input.length - 1
  if input.class == String
    for i in 1..resultEnd do
      newStr = newStr + input[i].to_s
    end
  return newStr
  elsif input.class == Array
    for i in 1..resultEnd do
      newArr = newArr.push(input[i])
    end
    newArr
  end
end

def exclude_ends(input)
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
  if input.class == Array
    input.delete(input[-1])
    input.delete(input[0])
    input
  else
    input.delete(input[-1]).delete(input[0])
  end
end

def select_every_even(arr)
  # takes in an array
  # returns a list of even-indexed items from the input
  newArr = []
  arr.each_index {|i| newArr.push(arr[i]) if i % 2 == 0}
  newArr
end

def select_every_odd(arr)
  # takes in an array
  # returns a list of odd-indexed items
  newArr = []
  arr.each_index {|i| newArr.push(arr[i]) if i % 2 !=0}
  newArr
end

def select_every_n(arr, n=1)
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
  newArr = []
  arr.each_index {|i| newArr.push(arr[i]) if i % n == 0}
  newArr
end
## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

##############################
#### MANIPULATING NUMBERS ####
##############################
def count_to(num)
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
  arr=[]
  if num ==0
    return [0]
  end
  n = num
  n = num.÷floor
  if !num.integer? && num < 0
    n = num.floor + 1
  end

  if n < 0
    0.downto(n) { |i| arr.push(i) }
  else
    0.upto(n) { |i| arr.push(i) }
  end
  arr
end

def is_integer?(num)
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers


  if num.class == Integer
    return true
  elsif num.class == String
    return false
  elsif num == nil
    return false
  elsif num == Float::NAN
    return false
  elsif num%1 == 0
    return true
  else
    return false
  end
end
def is_prime?(num)
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers

  # amongst the natural numbers greater than 1, a prime number (or a prime)
  # is such that has no divisors other than itself (and 1). The smallest prime is thus 2
  if num < 1 || !num.integer?
    return false
  else
    for i in 2..num/2 do
      if num % i == 0
        return false
      end
    end
    return true
  end
end

#def primes_less_than(num)
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number



##############################
#### MANIPULATING OBJECTS ####
##############################
def character_count(str)
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
  h = Hash.new(0)
  str.each_char do |c|
    h[c.downcase] +=1
  end
  h
end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
