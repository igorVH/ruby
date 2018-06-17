d = ARGV[0]
m = ARGV[1]
y = ARGV[2]

def data(month)
  case month 
    when 1, 3, 5, 7, 8, 10, 12
      return 31
    when 4, 6, 9, 11
      return 30
    when 2
      return 28
  end  
end

case m 
  when '������'
    n = 1
  when '�������'
    n = 2
  when '�����'
    n = 3
  when '������'
    n = 4
  when '���'
    n = 5
  when '����'
    n = 6
  when '����'
    n = 7
  when '�������'
    n = 8
  when '��������'
    n = 9
  when '�������'
    n = 10
  when '������' 
    n = 11
  when '�������'
    n = 12
end

for t in (1..12)
  v = data(t)
  if t == n
    sum = v - d
  elsif t > n
    sum += v
end

if y % 4 == 0 
  sum += 1
end

puts sum 