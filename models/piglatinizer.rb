class PigLatinizer

  def vowel?(character)
    (%w{a e i o u A E I O U}).include?(character)
  end

  def piglatinize(user_text)
    word_array = []

    user_text.split(" ").each do |word|

      # If first char is vowel move nothing - add way
      if vowel?(word.split(//)[0])
        word_array << word + "way"

      # Count chars that are consonats - move them to the end of string - add ay
      else
        rotate = 0
        word.split(//).each do |char|
          vowel?(char) ? break : rotate += 1
        end
        word_array << word.split(//).rotate(rotate).join + "ay"
      end

    end
    word_array.join(" ")
  end
end
