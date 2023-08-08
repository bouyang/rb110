def twice(num)
  dbl = num.to_s.chars
  digit_num = dbl.size
  if digit_num % 2 == 0
    dbl = dbl.join
    if dbl[0, digit_num / 2] == dbl[digit_num / 2, digit_num / 2]
      return num
    end
  end
  num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10