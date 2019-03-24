require 'pry'
def starts_with_a_vowel?(word)
  regex_downcase = /\A[aeiou]/i
  regex_upcase = /\A[AEIOU]/i
  if word.match?(regex_downcase) || word.match?(regex_upcase)
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text_string)
  array = []
  regex_downcase = /\A(un)+\w+(ing)/i
  regex_upcase = /\A(Un)+\w+(ing)/i
  text_string.split.each do |word|
    if word.match?(regex_downcase) || word.match?(regex_upcase)
      array << word
    else
      array
    end
  end
  array
end

def words_five_letters_long(text)
  # binding.pry
  words = []
  regex_five_long = /^\w{5}/
  text.split.each do |word|
    if word.scan?(regex_five_long)
      words << word
    else
      words
    end
  end
  words
end

def first_word_capitalized_and_ends_with_punctuation?(text)

end

def valid_phone_number?(phone)

end
