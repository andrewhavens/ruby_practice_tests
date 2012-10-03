
# Write a method palindrome?(string) that determines whether a given string (word or phrase) is a palindrome, that is, it reads the same backwards as forwards, ignoring case, punctuation, and nonword characters. (A "nonword character" is defined for our purposes as "a character that Ruby regexps would treat as a nonword character".)
# Your solution shouldn't use loops or iteration of any kind. Instead, you will find regular-expression syntax very useful; it's reviewed briefly in the book, and the website rubular.com lets you try out Ruby regular expressions "live". Some methods that you might find useful (which you'll have to look up in Ruby documentation, ruby-doc.org) include: String#downcase, String#gsub, String#reverse.
def palindrome?(str)
  # YOUR CODE HERE
end

# Define a function count_words(string) that, given an input string, return a hash whose keys are words in the string and whose values are the number of times each word appears.
# Your solution shouldn't use for-loops, but iterators like each are permitted. As before, nonwords and case should be ignored. A word is defined as a string of characters between word boundaries. (Hint: the sequence \b in a Ruby regexp means "word boundary".)
def count_words(str)
  # YOUR CODE HERE
end
