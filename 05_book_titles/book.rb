class Book
    attr_accessor :title, :lowercase_words
    def initialize
        @title = ""
        @lowercase_words = ["the", "a", "an", "and", "in", "of"]
    end

    def title=(string)
        @title = string.split(" ").each_with_index.map { |word, idx|
            if idx == 0 || !@lowercase_words.include?(word)
                word.capitalize
            else
                word
            end
        }.join(" ")
    end
end