class PigLatinizer

    def piglatinize_word(word)
        s1 = word.gsub(/[^A-z]/, '')
        arr = s1.split('')
        if arr[0].downcase == 'a' || arr[0].downcase == 'e' || arr[0].downcase == 'i' || arr[0].downcase == 'o' || arr[0].downcase == 'u'
            pig_word = arr.join
            pig_word += "way"
        else
            pig_word = ""
            consonant_string = ''
            until arr[0].downcase == 'a' || arr[0].downcase == 'e' || arr[0].downcase == 'i' || arr[0].downcase == 'o' || arr[0].downcase == 'u'
                consonant_string += arr.shift
            end
            pig_word = arr.join + consonant_string + "ay"
        end
        pig_word
    end

    def piglatinize(phrase)
        piglatinized_words = []
        words_to_piglatinize = phrase.split(" ")
        words_to_piglatinize.each do |word|
            piglatinized_words << piglatinize_word(word)
        end
        piglatinized_phrase = piglatinized_words.join(" ")
        piglatinized_phrase
    end
end