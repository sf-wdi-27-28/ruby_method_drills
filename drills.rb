#########################
#### USING ARGUMENTS ####
#########################
def say_hello
  # returns 'hello'
   'hello'
end

def echo(input)
  # returns the input string
   input
end

def eddie_izzards_height(heel=0)
    heel+67
end
    # calculates and returns Eddie Izzard's height
    # takes in the height of heels he's wearing (default value: 0)
    # and adds heel height to his base 67 inches for the result

def how_many_args(*args)
  args.count
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args-----rv
end

def find_answer(rep={})
  rep[:answer]
end
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments----rv


##############################
#### MANIPULATING STRINGS ####
##############################
def first_char(word)
   word.slice(0).downcase
end
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word


def polly_wanna(word)
  3.times do
     word
 end
end
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated


def count_chars(word)
   word.length
end
  # takes in a word
  # returns the number of characters in the word


def yell(message)
  message.capitalize + '!'
end
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message

## STRETCH ##
def to_telegram(message)
  message.replace('.','STOP')
end
# takes in a message
# replaces periods with ' STOP'
# returns the updated message


def spell_out(string)
  word.downcase.split("").join("-")
end
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes


def seperate(word, seperator="-")
    word.downcase.split("").join(seperator)
end
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string

## STRETCH ##
def croon(word)

  # seperates word characters with dashes
  # preserves whitespace between words

def palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false


## SUPER STRETCH ##
def palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

def is_vowel(string)

end
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

def add_period(string) do
  string[-1]<<'.'? string:  string[-1]+ <<'.'
end
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence


###########################
#### LOOPS & ITERATORS ####
###########################
def count_spaces(string)
  count = 0
  space = " "
  string.each_char do |el|
    if el == space
       count += 1
     end
   end
   count
 end
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces

def string_lengths(stringArr)
    stringArr.map {|str| str.length }
  end
  # takes in an array of strings
  # returns an array containing the lengths of the strings

def remove_falsy_values(list)
  list.select { |item| !!item }
end
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

def exclude_last(arr)
  arr[0..-2]
end
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

def exclude_first(arr)
  arr[1..-1]
end
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

def exclude_ends(arr)
  arr[1..-2]
end
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

def select_every_even(list)
  list.select.with_index {|item, index| item if index.even? }
end
  # takes in an array
  # returns a list of even-indexed items from the input

def select_every_odd(list)
  list.select.with_index {|item, index| item if index.odd? }
end
  # takes in an array
  # returns a list of odd-indexed items

def select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

## STRETCH ##
def compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

##############################
#### MANIPULATING NUMBERS ####
##############################
def count_to(n)
  n = n.to_i
  if n >= 0
    (0..n).to_a
  else
    0.downto(n).to_a
  end
end
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals

def is_integer?(num)
  num.class == Fixnum || num.class == Bignum ||
    ( num.is_a?(Float) && !num.nan? && num.to_i == num )
end

  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

def is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

def primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

## STRETCH ##
def iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number



##############################
#### MANIPULATING OBJECTS ####
##############################
def character_count(string)
  count = {}
  string.each_char do |el|
    el.downcase
    count[el].nil? ? count[el]=1 : count[el]+=1
  end
  count
end
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

## STRETCH ##
def word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
def most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
