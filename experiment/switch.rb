def apply_tuple(action, num)

  case action
    when :half
      result = num / 2;
    when :double
      result = num * 2;
    when :triple
      result = num * 3;
    when :quadruple
      result = num * 4;
    else
      result = num;
  end

  return result
end

result = apply_tuple :double, 2
