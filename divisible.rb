def is_divisible(x, n)
  remainder = x % n
  if remainder == 0
    return true
  else
    return false
  end
end

def return_div(x, y)
  output = []
  for i in x..y
    if is_divisible(i, 2)
      output.push(i)
    elsif is_divisible(i, 3)
      output.push(i)
    elsif is_divisible(i, 5)
      output.push(i)
    end
  end
  return output
end

puts "Numbers that are divisible by 2 or 3 or 5: #{return_div(1, 100).join(', ')}."