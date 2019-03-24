require 'pry'
def starts_with_a_vowel?(word)
  regex_downcase = /\A[aeiou]/i
  regex_upcase = /\A[AEIOU]/i
  return true if word.match?(regex_downcase) || word.match?(regex_upcase)
  #   true
  # else
  #   false
  # end
end

def words_starting_with_un_and_ending_with_ing(text_string)
  array = []
  regex_downcase = /\A(un)+\w+(ing)/i
  regex_upcase = /\A(Un)+\w+(ing)/i
  text_string.split.each do |word|
    array << word if word.match?(regex_downcase) || word.match?(regex_upcase)
  end
  array
end

def words_five_letters_long(text)
  words = []
  regex_five_long = /\A\w{5}\Z/i
  text.split.each do |word|
    words << word if word.match?(regex_five_long)
  end
  words
end

def first_word_capitalized_and_ends_with_punctuation?(text)

end

def valid_phone_number?(phone)

end
