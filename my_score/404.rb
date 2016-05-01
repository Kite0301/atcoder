require 'nokogiri'
require 'open-uri'

i = 1
loop{
	num = i.to_s
	if num.size == 1
		num = "00" + num
	else
		num = "0" + num
	end
	url = "http://arc#{num}.contest.atcoder.jp/assignments"
	doc = Nokogiri.HTML(open(url))
	if doc.css('h2').size == 0
		break
	end
	i += 1
}