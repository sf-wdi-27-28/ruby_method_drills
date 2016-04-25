#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  def say_hello(string)
    puts "hello"
  end

#echo
  def echo(string)
    puts string
  end

#eddie_izzards_height
  def eddie_izzards_height(num)
    puts num + 67
  end

  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result

#how_many_args
  def how_many_args(*args)
    puts args.count
  end

#find_answer
  def find_answer(**kwargs)
    puts kwargs[:answer]
  end

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  def first_char(string)
    puts string[0].downcase
  end

#polly_wanna
  def polly_wanna(string)
    puts string*3
  end

#count_chars
  def count_chars(string)
    puts string.length
  end

#yell
  def yell(string)
    puts string.upcase + "!"
  end

## STRETCH ##
#to_telegram
  def to_telegram(message)
    puts message.gsub(/\./, " STOP")
  end

#spell_out
  def spell_out(string)
    puts string.split("")
  end

#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string

## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false


## SUPER STRETCH ##
#palindrome_sentence?
  def palindrome_sentence(string)
    str = string.delete(" ")
    if str == str.reverse
      puts true
    else
      puts false
    end
    
  end

#is_vowel
  def is_vowel(char)
    char.is_a?(String) && !!char.match(/[aeiou]/i)
  end

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
  def count_spaces(string)
    count = 0
    string.each_char do |char|
      if char == " "
        count += 1
      end
    end
    puts count
  end

#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

#exclude_last
  def exclude_last(sequence)
    puts sequence[0..-2]
  end

#exclude_first
  def exclude_first(sequence)
    puts sequence[1..-1]
  end

#exclude_ends
  def exclude_ends(sequence)
    puts sequence[1..-2]
  end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

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

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

#primes_less_than
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
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

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
