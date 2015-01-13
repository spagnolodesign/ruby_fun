puts "Build your Christmas tree , as desired high?"

#costum var for height // double height for width
$height = gets.chomp.to_i
$width = $height * 2

def draw_tree
  tree = ""
  row = 1
  stars = 1
  blank = $width / 2 - 1
  b = true

  #loop to paint 
  while row <= $height
    tree +=draw_star(blank, stars, b)
    row += 1
    stars += 2
    blank -= 1
    b = !b
  end

  tree
end

#evry single element // with decoration  
def draw_star(blank, stars, b)
    case b
    when true
      "              " + " " * blank + "\033[32mF\033[0m" * stars + "\n"
    when false
      "              " + " " * blank + "\033[31m*\033[0m" * stars + "\n";
    end
end

#trunk 
def draw_base
  base = ""
  3.times do
    base += "              " + " " * ($width / 2.5) + "\033[33m=\033[0m" * ($width / 6.5) + "\n"
  end

  base
end

#render
def render
    tree = ""
    tree += draw_tree
    tree += draw_base
    puts tree
end

#Lunch
render