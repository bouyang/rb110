DEGREE = "\xC2\xB0"

def dms(num)
  degrees = num.to_s.split('.')[0].to_i
  remainder = ((num - degrees) * 3600).to_i

  minutes = '%02d' % (remainder / 60)
  seconds = '%02d' % (remainder % 60)

  result = "%(#{degrees}#{DEGREE}#{minutes}'#{seconds}\")"
end

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)