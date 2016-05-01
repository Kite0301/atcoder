require 'nokogiri'
require 'open-uri'

puts "URlを入力してください。"
url = gets.chomp.to_s
doc = Nokogiri.HTML(open(url))

doc.css('td').css('a').each do |element|
  if element[:href].include?('/users/')
    element[:href] =~ /users\//
    p $'
  end
end