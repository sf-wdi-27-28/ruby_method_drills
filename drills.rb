#########################
#### USING ARGUMENTS ####
#########################

def say_hello
  return "hello"
end
#say_hello
# => "hello"
________________________________________________

def echo(input)
  input
end
#echo("Hello")
# =>"Hello"
________________________________________________

  def eddie_izzards_height(heel_height=0)
    67 + heel_height
  end
  #eddie_izzards_height(4)
  # => 71
________________________________________________

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args

  def how_many_args(*args)
    args.count
  end
  #how_many_args(5,6,7,8)
  # => 4
________________________________________________

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments

  def find_answer(kwargs={})
    kwargs[:answer]
  end
  #find_answer("Who?":"Me")
  # =>nil
________________________________________________


##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word

  def first_str(str)
    str[0].downcase
  end
  # first_char("A")
  # => "a"
________________________________________________

#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated

  def polly_wanna(word)
    word*3
  end
# polly_wanna("Hey ")
# => "Hey Hey Hey Hey Hey "
________________________________________________

#count_chars
  # takes in a word
  # returns the number of characters in the word

  def count_chars(word)
    word.length
  end
  # count_chars("You are here")
  # => 12
________________________________________________

#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message

  def yell(message)
    message.upcase + "!!"
  end
  # yell("you are leaving?")
  # => "YOU ARE LEAVING?!!"
________________________________________________

## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message

  def to_telegram(message)
    message.gsub(/\./, "STOP")
  end
  # to_telegram("Can you listen and .")
  # "Can you listen and STOP"
________________________________________________


#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
________________________________________________

#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
________________________________________________

## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false
________________________________________________

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
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces

  def count_spaces(string)
    count = 0
    space = " "
    string.each_char do |char|
      if char == space
        count += 1
      end
      count
    end
  end
  # count_spaces()
  # =>
________________________________________________


#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings

  def string_lengths(list)
    list.map {|str| str.length }
  end
________________________________________________


#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

  def remove_falsy_values(list)
    list.select { |item| !!item }
  end
________________________________________________


#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
________________________________________________


#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
________________________________________________


#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
________________________________________________


#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
________________________________________________


#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items
________________________________________________


#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
________________________________________________


## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
________________________________________________


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
    if n >= 0
      (0..n).to_a
    else
      0.downto(n).to_a
    end
  end
  
________________________________________________

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
________________________________________________

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
________________________________________________

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
________________________________________________

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
________________________________________________



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
________________________________________________

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts
________________________________________________

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
________________________________________________
