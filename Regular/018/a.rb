hei,bmi = gets.chomp.split.map(&:to_f)
hei = hei*0.01
puts bmi * (hei**2)