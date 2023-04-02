def do_calc
  yield 7, 9
end

do_calc { |x, y| puts "#{x + y}" }
do_calc { |x, y| puts "#{x * y}" }