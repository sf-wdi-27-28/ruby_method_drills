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


def how_many_args(*args) #takes in any number of arguments
 args.length #does not need asterisk when using it in block
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
def to_telegram(message)
  message.gsub(/[.]/, ' STOP') #takes in message and substitutes periods with "STOP"
end
to_telegram("Hello. I like frogs. That's all.")



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
  # preserves whitespace between words
def croon (word)
  if word.each_char != "" # I feel like I'm getting close.. may come back to figure this out..
  word.split("").join"-"
  end
end
croon ("Hello. What is your name?")



#palindrome_word?
def palindrome_word?(single_word) # ? is asking for true or false
  word = single_word.downcase #making word(s) downcase and storing in variable to ignore case
  word == word.reverse #if word as is is equal to word in reverse, return true
end
palindrome_word?("tony")

## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation
# def palindrome_sentence(sentence)
#   # lowercase_sentence = sentence.downcase
# end

# is_vowel
def is_vowel(char)
  char.is_a?(String) && !!char.match(/[aeiou]/i) # used solution stumped!!
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
def string_lengths(array)
    array.map{|string| print string.length, string} #iterates through each item in the array and prints their length along with the item.. this seems to be working when i test it in irb, but it doesn't pass on rspec?
end
string_lengths([ "Jackie", "Caroline", "Casey" ])




#remove_falsy_values
  # takes in a list
def falsy_values(list)
  list.select { |item| !!item } # stumped yet again.. this solution appears to be slecting each item in the list and returning only non-falsy items?
end

#exclude_last
def exclude_last(string)
  string[0..-2] #takes out the last character of the string
end
exclude_last(["this","is","an","array"])

#exclude_first
def exclude_first(string)
  string[1..-1] #takes out the first character of string
end
exclude_first("hello")

#exclude_ends
def exclude_ends(string)
  string[1..-2] # leaves first and last characters out of string
end
exclude_ends("cool")

#select_every_even
def select_every_even(list)
list.select.with_index {|item, index| item if index.even? } # taken from solution
end



#select_every_odd
def select_every_odd(list)
  list.select.with_index{|item, index|item if index.odd?} #solution
end




#select_every_n
# def select_every_n(list, n=1)
#   list.select.with_index{|item, index|item if index%n==0 } # applied solution from problem above to get this far.. with the rest I feel like i'm close, don't want to use the solution yet!
# end
#   select_every_odd(["fda","fdsa","fds","22","4g"], 2)

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
def count_to(n)
  n = n.to_i
  if n >= 0
    (0..n).to_a
  else
    0.downto(n).to_a # solution i was fairly close
  end
end

#is_integer?
def is_integer?(num)
  num.class == Fixnum || num.class == Bignum || #used solution - had no clue.
    ( num.is_a?(Float) && !num.nan? && num.to_i == num )
end #solution

#is_prime?
def is_prime?(number)
  if !is_integer?(num) || num <= 1
    false
  elsif num <= 1
    false
  else
    (2..(num-1)).each do |n|
      if num % n == 0
        return false  #solution
      end
    end
    true
  end
end

#primes_less_than
def primes_less_than(number)
  primes = []
  (2..num-1).each do |n|
    if is_prime?(n)
      primes.push n
    end
  end
  primes #solution
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
#character_count

def character_count(string)
  char_counts = {}
  string.each_char do |char|
    char = char.downcase
    if char_counts[char].nil?
      char_counts[char] = 1 #solution
    else
      char_counts[char] += 1
    end
   end
  char_counts # solution again..
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
