#########################
#### USING ARGUMENTS ####
#########################
#says "hello"
def say_hello
  "hello"
end

#returns string passed into arg
def echo(str)
  p str
end

# calculates and returns Eddie Izzard's height
# takes in the height of heels he's wearing (default value: 0)
# and adds heel height to his base 67 inches for the result
def eddie_izzards_height(heelHeight=0)
  heelHeight + 67
end

# accepts any number of arguments without complaint
# returns the total number of arguments passed to the function
# Hint: google ruby *args
def how_many_args(*arg)
  arg.length
end

# returns the value associated with the 'answer' keyword argument
# returns nil if it cannot find the 'answer' keyword argument
# complains when given non-keyword arguments
# Hint: google ruby keyword arguments
def find_answer(h={})
  h[:answer]
end

##############################
#### MANIPULATING STRINGS ####
##############################

# takes in a word
# returns the first letter of the word
# lowercases the first letter of the word
def first_char(word)
  word[0].downcase
end


# takes in a word
# echoes the original word
# repeats the original word 3 times
# returns a string with the word repeated
def polly_wanna(word)
  word * 3
end

# takes in a word
# returns the number of characters in the word
def count_chars(word)
  word.length
end

# takes in a message
# convert the message to uppercase
# adds an exclamation point to the end of the message
# returns the message
def yell(msg)
  msg.upcase + "!"
end

## STRETCH ##

# takes in a message
# replaces periods with ' STOP'
# returns the updated message
def to_telegram(msg)
  msg.gsub(".", " STOP")
end

# takes in a string
# converts the string to lowercase
# returns the input string, with characters seperated by dashes
def spell_out(str)
  str.downcase.split("").join("-")
end

# takes in a string
# seperates characters with a custom seperator, when supplied with one
# seperates characters with dashes (by default)
# returns the modified string
def seperate(str, separator="-")
  str.split("").join(separator)
end

## STRETCH ##

# seperates word characters with dashes
# preserves whitespace between words

# def croon(str) #INCOMPLETE
#   str.split.each do |word|
#     word.each_char do |char|
#       char == " " ? char = " " : res += "#{char}-"
#     end
#     word[-1]=""
#   end
#   str.join(" ")
# end

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false


## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence


###########################
#### LOOPS & ITERATORS ####
###########################

# takes in a string
# counts the spaces in a string
# returns number of spaces
def count_spaces(str)
  str.count(" ")
end

# takes in an array of strings
# returns an array containing the lengths of the strings
def string_lengths(arr)
  arr.map { |e| e.length }
end

# takes in a list
# filters out falsy values from a list
# returns the updated list
def remove_falsy_values(arr)
  arr.reject { |e| !e } # OR arr.reject { |e| !!e }
end

# takes in an array or string
# removes the last item from the array or string
# returns it
def exclude_last(arg)
  arg[0..-2] ## or arg[0...-1]
end

# takes in an array or string
# removes the first item from an array
# removes the first character from a string
# returns a new string - does not alter the original input (non-destructive)
def exclude_first(arg)
  arg[1..-1]
end

# takes in an array or string
# removes the first and last items from an array
# removes the first and last characters from a string
def exclude_ends(arg)
  arg[1..-2] #or arg[1...-1]
end

# takes in an array
# returns a list of even-indexed items from the input
def select_every_even(arr)
    arr.select.with_index { |e, i| e if i.even? }
end

# takes in an array
# returns a list of odd-indexed items
def select_every_odd(arr)
  arr.select.with_index { |e, i|  e if i.odd? }
end

# takes in an array
# returns a list of items at an index evenly divisible by n
# defaults to an n value of 1
def select_every_n(arr, val=1)
  arr.select.with_index { |e, i|  e if ( i % val == 0 ) }
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

# takes in a number
# returns an array containing every integer from 0 to n
# counts up or down
# rounds off decimals
def count_to(num)
  num = num.to_i
  num >= 0 ? [*0..num] : [*num..0].reverse
end

# takes in a number
# returns true for Fixnums and Bignums (whole number or 'integer' types)
# returns true for Floats (decimals) equal to integers
# returns false for non-integer decimals
# returns false for Float::NAN
# returns false for non-numbers
def is_integer?(num)
  # first two arguments can be replaced with num.is_a?(Integer)
  num.class == Fixnum || num.class == Bignum || ( num.class == Float && !num.nan? && num == num.floor )
end

# takes in a number and checks if it's prime
# returns false for non-integer decimals
# returns false for numbers less than or equal to 1
# returns false for numbers divisible by anything but 1 and themselves
# returns true for prime numbers
# Hint: google prime numbers!
def is_prime?(num)
  if !num.is_a?(Integer) || ( num.class == Float && !num.nan? && num == num.floor ) || num <= 1
    false
  else
    (2...num).each do |i|
      if num % i == 0
        return false
      end
    end
    true
  end
end

# takes in a number
# returns an empty array if there are no primes below num
# does not return the number itself
# finds all primes less than the given number
def primes_less_than(num)
  res = []
  (2...num).each do |i|
    res.push(i) if is_prime?(i) == true
  end
  res
end

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

# takes in a string
# counts how many times each character appears in a string
# ignores case
# returns the hash
def character_count(str)
  letters = Hash.new(0)
  str.downcase.each_char {|char| letters[char] += 1}
  letters
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
