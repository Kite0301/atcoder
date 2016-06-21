# s=gets.chop
# 94.downto(3){|i|
#   s.gsub!('o'*i+'kayama',"#{i}K")
# }
# p s


@s=gets.chop
@t=''

def un
  @s.sub!('T',@t)
  if @s.include?('oookayama')
    due
  else
    puts @s
  end
end

def due
  94.downto(3){|i|
    @t='o'*i+'kayama'
    @s.sub!(@t,'T')
    break if @s.include?('T')
  }
  tro
end

def tro
  if @t.include?('oo')
    @t.sub!('oo','O')
    qua
  else
    un
  end
end

def qua
  @t.sub!('OO','o')
  tro
end

un
