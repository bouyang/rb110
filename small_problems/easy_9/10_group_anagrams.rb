def anagrams(arr)
  (0...arr.length).each do |idx|
    ana_arr = []
    arr.each do |word|
      if word.chars.sort == arr[idx].chars.sort
        ana_arr << word
      end
    end
    p ana_arr
  end
end

# def anagrams(words)
#   result = {}

#   words.each do |word|
#     key = word.split('').sort.join
#     if result.has_key?(key)
#       result[key].push(word)
#     else
#       result[key] = [word]
#     end
#   end

#   result.each_value do |v|
#     puts "------"
#     p v
#   end
# end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams(words)