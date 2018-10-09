def apply_tuple(action, num)
  if action == :half
    result = num / 2
  elsif action == :double
    result = num * 2
  elsif action == :triple
    result = num * 3
  elsif action == :quadruple
    result = num * 4
  else
    result = num
  end

  result
end

result = apply_tuple :double, 2
