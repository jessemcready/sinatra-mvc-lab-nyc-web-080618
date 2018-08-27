class PigLatinizer

  def piglatinize(string_of_words)
    string_array = string_of_words.split(" ")
    new_string_array = string_array.map do |word|
      rule_to_follow(word)
    end
    new_string_array.join(" ")
  end # end piglatinize

  def rule_to_follow(word)
    vowels = "aeiouAEIOU"
    if word[0] == "t"
      if word[1] == "h"
        word = word.slice!(2..-1) + "thay"
        return word
      else
        word = word.slice(1..-1) + "tay"
        return word
      end # end if word[1]
    elsif word[0] == "s" || word[0] == "S"
      if word[1] == "p" && word[2] == "r"
        word = word.slice(3..-1) + "spray"
        return word
      elsif word[1] == "t" && word[2] == "r"
        word = word.slice(3..-1) + "Stray"
        return word
      elsif word[1] == "p"
        word = word.slice(2..-1) + "spay"
        return word
      elsif word[1] == "k"
        word = word.slice(2..-1) + "skay"
        return word
      else
        word = word.slice(1..-1) + "say"
        return word
      end # if word[1] && word[2]
    elsif word[0] == "p"
      if word[1] == "r"
        word = word.slice(2..-1) + "pray"
        return word
      elsif word[1] == "l"
        word = word.slice(2..-1) + "play"
        return word
      else
        word = word.slice(1..-1) + "pay"
        return word
      end # end word[0] == p
    elsif word[0] == "w"
      if word[1] == "h"
        word = word.slice(2..-1) + "whay"
        return word
      else
        word = word.slice(1..-1) + "way"
      end
    elsif vowels.include?(word[0])
      word += "way"
      return word
    else
      # binding.pry
      first_letter = word[0]
      word = word.slice(1..-1) + first_letter + "ay"
      return word
    end # end if
  end

end # class PigLatinizer
