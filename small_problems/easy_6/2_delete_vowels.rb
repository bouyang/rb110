VOWELS = 'aeiouAEIOU'

def remove_vowels(arr)
  arr.map do |word|
    word.chars.reject do |letter|
      VOWELS.include?(letter)
    end.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']