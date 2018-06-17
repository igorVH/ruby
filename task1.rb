i = ARGV[0]
a = ARGV[1]
b = ARGV[2]

def changer(i ,a ,b)
  i.to_s
  case a 
    when 2
      return 0bi
    when 8 
      return 0oi
    when 16
      return oxi
  end 
end

if a != 10 
  i = changer(i, a, b)
  a = 10
  puts i
end
  
res = i.to_s(b)

puts res
