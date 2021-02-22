class PigLatinizer

    def piglatinize(string)
        #split up the string
        first_part = string.split("")
        #use the word method
        second_part = first_part.map { |word| piglatinize_word(word)}
        #put the string back together
        second_part.join(" ")



    end

    def piglatinize_word(word)
        #figure out how to isolate the first letter
        first_letter = word[0].downcase

        #determine if the first letter is a vowel
        if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"
            "#{word}way"
        else 
            #create an array of consonant 
            consonants = []
            consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                consonants << word[1]
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                    consonants << word[2]
                end
            end

            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end


        #if it's not, move all consonants to the back and add "ay" to the end



    end

end