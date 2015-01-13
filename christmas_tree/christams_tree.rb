def master_tree
  height = 0
  inverted = 6
  h, i = build_line(height,inverted)
  h, i = build_line(h,i)
  h, i = build_line(h,i)
  h, i = build_line(h,i)
  h, i = build_line(h,i)

end

def build_line(h,i)
  h += 1
  i -= 1
  puts build_space(i) + build_start(h)
  return h,i
end

def build_start(n)
  if n == 1; return '*'
  elsif n == 2; return '***'
  elsif n == 3; return '*****'
  elsif n == 4; return '*******'
  elsif n == 5; return '*********'
  elsif n == 6; return '***********'
  end
end

def build_space(n)
     if n == 1; return ' '
  elsif n == 2; return '  '
  elsif n == 3; return '   '
  elsif n == 4; return '    '
  elsif n == 5; return '     '
  elsif n == 6; return '      '
  end
end

master_tree
