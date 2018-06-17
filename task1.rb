i = ARGV[0]
a = ARGV[1]
b = ARGV[2]

def changer(i ,a)
  i.to_s
  return Integer(i, a)
end

if a != 10 
  i = changer(i, a)
  a = 10
end
  
res = i.to_s(b)

puts res
