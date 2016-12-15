require 'pry'
class PigLatinizer

  def to_pig_latin(phrase)
    final_phrase = []
    phrase_array = phrase.split(" ")

    phrase_array.each do |word|
      final_phrase << piglatinize(word)
    end

    final = final_phrase.join(" ")
  end

  def piglatinize(word)
    vowel_array = ["a","e","i","o","u","y"]

    if vowel_array.include?(word[0].downcase)
      word << "way"
      word
    else
      word_array = word.chars
      until vowel_array.include?(word_array.first.downcase)
        back_letter = word_array.shift
        word_array.push(back_letter)
      end
      word_array.push(["a", "y"]).join("")
    end
  end
end
