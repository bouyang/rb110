=begin

-----Problem-----
- Reads some text from a file that you create then plugs in a selection of randomized nouns, verbs, adj, and adv into that text and prints it
- Read this and for each line, place random words of the appropriate types into the text and print the result

Input:
- Text from file
- List of n/v/a/adv
Output:
- Text with randomized words inserted

Explicit requirements:
- Text file input
- Randomized n/v/a/adv should be inserted
Implicit requirements:
- 

-----Examples-----

Edge cases?

-----Data Structure-----
Array of n/v/a/adv possible
String of 'base' text


-----Algorithm-----
Create an array of n/v/a/adv with different strings of each
Create a text file of 'base' text with areas for n/v/a/adv to be inserted

Randomly select one string from the array of different things and store those in a variable
Output the string with those randomly inserted words placed in


=end

NOUNS = %w(dog duck cat chair plant)
VERBS = %w(jumps eats hits sees sits)
ADJS = %w(red big tiny blue nice)
ADVS = %w(quickly slowly happily angrily)

File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJS.sample,
                      adverb:    ADVS.sample)
  end
end