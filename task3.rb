t1 = 100000
t2 = 100000

def choseEnd(a, n)
  a = a - ((a / 10).floor) * 10
  case a 
    when 0
      if n == 1
        return "��"
      end
    when 1
      if n != 1
        return "�"
      end
    when 2, 3, 4
      if n != 1 
        return "�"
      else
        return "�"
      end 
    when 5, 6, 7, 8, 9
      if n == 1
        return "��"
      end    
  end
end

if (t1 >= 1 || t1 <= 100000) && (t2 >= 1 || t2 <= 100000)
  allow = true
else
  puts "�������� ������"
end

if allow == true 
  sec = t1 + t2
  if sec >= 60 
    min = (sec/60).floor
    sec = sec - (min * 60)
  end
  if min >= 60 
    hours = (min/60).floor
    min = min - (hours * 60)
  end
  if hours >= 24 
    days = (hours/24).floor
    hours = hours - (days * 24)
  end

  case days
    when 1 
      daysStr = '����'
    when 2
     daysStr = '���'
  end
  hoursStr = "���#{choseEnd(hours, 1)}"
  minStr = "�����#{choseEnd(min, 2)}"
  secStr = "������#{choseEnd(sec, 3)}"

  answer = "#{days} #{daysStr} #{hours} #{hoursStr} #{min} #{minStr} #{sec} #{secStr}"
  puts answer
end
