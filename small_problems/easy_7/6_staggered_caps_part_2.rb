ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(str)
  cap = true
  new_str = str.chars.map do |letter|
    if letter =~ /[a-z]/i
      if cap
        letter.upcase!
        cap = !cap
      else
        letter.downcase!
        cap = !cap
      end
    end
    letter
  end.join
  new_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'