def caesar_cipher(string, number)
    string.split("")
          .map { |letter| letter_or_not(letter, number) }
          .join()
end

def letter_or_not(character, number)
    element = character.ord
    base = element < 97 ? 65 : 97
    if ((element >= 65 && element <= 90) || (element >= 97 && element <= 122))
        return (((element + number - base) % 26) + base).chr
    end
    character
end