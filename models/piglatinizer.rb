class PigLatinizer
    attr_accessor :piglatinized_phrase

    def piglatinize(input_sentence)

        input_sentence.split(" ").length > 1 ? to_pig_latin(input_sentence) : piglatinize_word(input_sentence) #ternary operator
        
    end
  
  def piglatinize_word(word) #single word
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      front_end = word.slice!(0..vowel_index-1)
      word + front_end +"ay"
    end
  end
  
  def to_pig_latin(phrase)
    word_array = phrase.split(" ")
    @piglatinized_phrase = word_array.map {|word| piglatinize(word)}.join(" ")
    
  end
end

