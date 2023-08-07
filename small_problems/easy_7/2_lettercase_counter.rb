LOWERCASE = ('a'..'z')
UPPERCASE = ('A'..'Z')

def letter_case_count(str)
  lc = 0
  uc = 0
  ne = 0

  str.chars.each do |char|
    if LOWERCASE.include?(char)
      lc += 1 
    elsif UPPERCASE.include?(char)
      uc += 1 
    else
      ne += 1
    end
  end
  hsh = {lowercase: lc, uppercase: uc, neither: ne}
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }