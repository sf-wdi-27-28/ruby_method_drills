#########################
#### USING ARGUMENTS ####
#########################

#say_hello
# returns 'hello'
def say_hello
  'hello'
end


#echo
  # returns the input string
def echo(string)
  string
end
echo("hi")
echo("hey")


#eddie_izzards_height

def eddie_izzards_height(height_of_heels=0) #setting heels default to 0
 height_of_heels + 67 #default height plus height of 67 inches
end
eddie_izzards_height(7)#=>72


#how_many_args


def how_many_args(*args)
 args.length
end
how_many_args(1,2,3,4,5) #=> 5


#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments

  def find_answer(kwargs={})
    kwargs[:answer]
  end # i looked at the solution for this one - i could not figure it out for the life of me! also i do not understand the answer.

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
def first_char(word) # passing in word as param
  first_letter = word[0]  #taking first letter of word and storing in variable
  first_letter.downcase #downcasing stored variable
end
first_char('JACKIE')

#polly_wanna
def polly_wanna (word) # passing in word
 word * 3  # repeating word 3 times
end
polly_wanna("cracker")


#count_chars

def count_chars(word)
  word.length   # returns the number of characters in the word
end
count_chars("cheese")

#yell
def yell(message)
  loud = message.upcase # converting message to uppercase
  loud << "!" #adding exclamation point
end
yell("i love cheese")

## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message


#spell_out
def spell_out(string)
 lowercase = string.downcase #storing lowercase string in variable.
 lowercase.split("").join("-")#splitting spring into single letters, joining them with dashes
end
spell_out("SHERYLCROW")

#separate

def seperate (string, custom_seperator= "-") #(passing in string and custom separator (with default of "-") as params )
    string.split("").join(custom_seperator) # splitting string and joining with whichever character is passed in as an argument)
end
seperate("Hello", "+")


## STRETCH #
#croon
  # seperates word characters with dashes
  # preserves whitespace between words

#palindrome_word?
def palindrome_word?(single_word)
  word = single_word.downcase
  word == word.reverse
end
palindrome_word?("tony")

## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

# is_vowel
def is_vowel(char)
  char.is_a?(String) && !!char.match(/[aeiou]/i) # used solution (obviously) stumped!!
end

# add_period
def add_period(input)
  "!?.".include?(input[-1]) ? input : input + "." # used solution for this one as well
end


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # did not get this one on my own, but i was close! i actually understand this solution, though.
def count_spaces(str) #passing str in as param
  count = 0 # setting count to 0
  space = " " # setting space to space
  str.each_char do |char| #starting loop .. iterating through each character and returns the character
    if char == space # returned character is compared to space variable. if they are equal...
      count += 1 #.. then the count increases
    end
  end
  count # count is returned thus declaring how many spaces have been counted.
end


# string_lengths
  def string_lengths(a)
      a.map{|each| print each.length , a}
  end
  string_lengths([ "Jackie", "Caroline", "Casey" ])




#remove_falsy_values
  # takes in a list
def falsy_values(list)
list.select { |item| !!item } # stumped yet again.. this solution appears to be slecting each item in the list and returning only non-falsy items?
end

#exclude_last
def exclude_last(string)
  string.delete(string[-1])
  return string
end
exclude_last(["this","is","an","array"])

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
def exclude_first(string)
  new_string = string.delete(string[0])
  return new_string
end
exclude_first("hello")

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

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
