require 'pry'
def starts_with_a_vowel?(word)
  regex = /\A[aeiou]/i
  return word.match?(regex)
end

def words_starting_with_un_and_ending_with_ing(text_string)
  array = []
  regex = /\A(un)+\w+(ing)/i
  text_string.split.each do |word|
    array << word if word.match?(regex)
  end
  array
end

def words_five_letters_long(text)
  words = []
  regex = /\A\w{5}\Z/i
  text.split.each do |word|
    words << word if word.match?(regex)
  end
  words
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  # regex_beginning = /\A[A-Z]+\w/
  # regex_end = /\w+[!.?]+\Z/
  # text_array = text.split
  # return text_array[0].match?(regex_beginning) && text_array[-1].match?(regex_end)
  regex = /\A[A-Z].*[!.?]+\Z/
  return text.match?(regex)
end

def valid_phone_number?(phone)
  # binding.pry
  regex = /\A[0-9]{10}+\Z/
  # binding.pry
  delimiters = ['-', '(', ')', '.', ' ']
  # binding.pry
  numbers = (phone.split(Regexp.union(delimiters))).join
  binding.pry
  numbers.match?(regex)
end
