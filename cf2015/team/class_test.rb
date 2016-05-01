class Cat
  attr_accessor :name, :color
  def initialize(name, color)
    @name = name; @color = color
  end

  def add
    puts "#{self.name}-#{self.color}"
  end
end

cat=Cat.new("Tama", "white")

cat.add