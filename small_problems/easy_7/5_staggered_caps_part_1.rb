def staggered_case(str)
  cap = true
  new_str = str.chars.map do |letter|
    if cap
      letter.upcase!
    else
      letter.downcase!
    end
    cap = !cap
    letter
  end.join
  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'