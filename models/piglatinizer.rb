class PigLatinizer

    def change_to_pig_latin(word)
        vowels = ['a', 'e', 'i', 'o', 'u']
        if vowels.include?(word[0].downcase)
            #binding.pry
            word << "way"
        else
            consonants = '' 
            while !vowels.include?(word[0])
                consonants << word[0]
                word = word.split("")[1..-1].join
            end
            word + consonants + "ay"
        end 

    end 

    def piglatinize(text)
        text.split.collect{|word| change_to_pig_latin(word)}.join(' ')
    end
end 

    