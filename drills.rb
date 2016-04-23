#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'
def say_hello
  return 'hello'
end

#echo
# returns the input string
def echo(string)
  return string
end

#eddie_izzards_height
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result
def eddie_izzards_height(heels=0)
  return 67 + heels
end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args
def how_many_args(*args)
  return args.length
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
def find_answer(args={})
  args[:answer]
end

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word
def first_char(word)
  return word[0].downcase
end

#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated
def polly_wanna(word)
  word * 3
end

#count_chars
  # takes in a word
  # returns the number of characters in the word
def count_chars(word)
  word.length
end

#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message
def yell(word)
  return (word.upcase + "!")
end

## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message
def to_telegram(message)
  message.gsub!('.', ' STOP')
end


#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
def spell_out(string)
  string.downcase!
  string.gsub!('', '-')
  string[0]=''
  string[string.length-1]=''
  string
end


#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
def seperate(string, char='-')
  string.gsub!('', char)
  string[0]=''
  string[string.length-1]=''
  string
end

## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words
def croon(string)
 string.split(" ").map { |word| word.split("").join("-") }.join(" ")
end

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false
def palindrome_word?(word)
  if word.length == 1
    return true
  elsif word.length % 2 == 0
    first_half = word[0..(word.length/2)-1]
    second_half = word[(word.length/2)..word.length]
  else
    first_half = word[0..(word.length/2)]
    second_half = word[(word.length/2)..word.length]
  end
  first_half.downcase.reverse == second_half.downcase ? true : false
end

## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation
def palindrome_sentence?(string)
  word = string.downcase.gsub(/[^a-z0-9\s]/i, '').delete(' ')
  if word.length == 1
    return true
  elsif word.length % 2 == 0
    first_half = word[0..(word.length/2)-1]
    second_half = word[(word.length/2)..word.length]
  else
    first_half = word[0..(word.length/2)]
    second_half = word[(word.length/2)..word.length]
  end
  first_half.downcase.reverse == second_half.downcase ? true : false
end

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully
def is_vowel(char)
  if !char.is_a?(String)
    return "Invalid input"
  else
    ('aeiou').include?(char.downcase)
  end
end
## What does graceful mean in this context???

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
def add_period(string)
  if (".!?").include?(string[-1])
    return string
  end
  string = string + "."
end


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces
def count_spaces(string)
  counter = 0
  string.each_char do |char|
    if char == " "
      counter += 1
    end
  end
  counter
end

#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings
def string_lengths(arr)
  length_arr = []
  arr.each do |el|
    length_arr << el.length
  end
  length_arr
end


#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list
def remove_falsy_values(arr)
  arr.select{ |el| !!el }
end

#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
def exclude_last(thing)
  thing[0, thing.length-1]
end

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
def exclude_first(thing)
  thing[1, thing.length]
end


#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
def exclude_ends(thing)
  thing[1, thing.length-2]
end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
def select_every_even(arr)
  new_arr = []
  arr.each_with_index do |el, i|
    if i % 2 == 0
      new_arr << el
    end
  end
  new_arr
end

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items
def select_every_odd(arr)
  new_arr = []
  arr.each_with_index do |el, i|
    if i % 2 != 0
      new_arr << el
    end
  end
  new_arr
end

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
def select_every_n(arr, n=1)
  new_arr = []
  arr.each_with_index do |el, i|
    if i % n == 0
      new_arr << el
    end
  end
  new_arr
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
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
def count_to(n)
  n = n.to_i
  i = 0
  nums_arr = []
  if n > 0
    while i <=n
      nums_arr << i
      i += 1
    end
  elsif n <= 0
    while i >= n
      nums_arr.unshift(n)
      n += 1
    end
  end
  nums_arr
end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
def is_integer?(num)
  num.class == Fixnum || num.class == Bignum || num.class == Fixnum || (num.class == Float && num % 1 == 0)
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
def is_prime?(num)
  return false if num <= 1 || num % 1 != 0
  i = num-1
  while i > 1
    if num % i == 0
      return false
    end
    i -= 1
  end
  true
end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
  def is_prime?(num)
    return false if num <= 1 || num % 1 != 0
    i = num-1
    while i > 1
      if num % i == 0
        return false
      end
      i -= 1
    end
    true
  end

def primes_less_than(num)
  primes_arr = []
  while 0 < num
    primes_arr.unshift(num-1) if is_prime?(num-1)
    num -=1
  end
  primes_arr
end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
def iterative_factorial(num)
  return 1 if num == 0 || num == 1
  return Float::NAN if num < 0 || num % 1.0 != 0
  nowSum = 1
  while num > 0
    nowSum = nowSum * num
    num -= 1
  end
  nowSum
end



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
def character_count(string)
  count = Hash.new(0)
  string.each_char do |char|
    count[char] += 1
  end
  count
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
