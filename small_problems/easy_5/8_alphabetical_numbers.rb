NUM_TO_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  result = []
  words = arr.map do |num|
    NUM_TO_WORDS[num]
  end
  words.sort!
  words.each do |word|
    20.times do |num|
      if NUM_TO_WORDS[num] == word
        result << num
      end
    end
  end
  result
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]