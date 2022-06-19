require 'pry'

class Anagram

    def initialize(word)
        @word = word
    end

    def match(word_array)
        split_word = @word.split('')
        anagram = []
        word_array.each do |i|
            letter_array = i.split('')
            if split_word.sort == letter_array.sort
                anagram << letter_array.join
            end
        end
        anagram
    end
end
