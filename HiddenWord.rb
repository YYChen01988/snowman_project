class HiddenWord
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def check_guess(letter)
    return @word.include? letter
  end

  def display_word(letters_array)
    result = ""
    for l in @word.split("")
      if letters_array.include? l
        result +=l
      else
        result +="*"
      end
    end
    return result
  end
end
