def starts_with_a_vowel?(word)
word.match(/\A[aeiouAEIOU]/) != nil
end

starts_with_a_vowel?("!ord")

def words_starting_with_un_and_ending_with_ing(text)
text.scan(/un\w*ing/)
end

words_starting_with_un_and_ending_with_ing("unassuming ambiguous understanding pomp circumstance uninteresting uncompromising grouchy corollary")

def words_five_letters_long(text)
text.scan(/\b\w{5}\b/)
end


words_five_letters_long("extreme briny crepe parking snaps grouping snafu round dog be fork spoon")

def first_word_capitalized_and_ends_with_punctuation?(text)
  #Returns true for text starting with a capital letter and ending with puncutation
  first_letter = text.scan(/\w+/)[0]
  if (text.scan(/\./)) && (first_letter == first_letter.upcase)
    true
  else  
    false
  end
end

def first_word_capitalized_and_ends_with_punctuation_2?(text)
  if text.match(/^[A-Z]/) && text.match(/[\.]$/)
    true
  else 
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/([0-9] ?){10}/) || phone.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) || phone.match(/\b([0-9]{7})\b/)
    true
  else
    false
  end
end

valid_number = "(800)IloveNY"

valid_phone_number?(valid_number)

