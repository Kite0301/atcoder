require 'nokogiri'
require 'open-uri'

u_name = gets.chomp.to_s

arr = Array.new(44,"")

level = [["1","a"],["2","b"],["3","c"],["4","d"]]

for k in 0..3
for i in 1..44 do
	num = i.to_s
	if num.size == 1
		num = "00" + num
	else
		num = "0" + num
	end

	task = level[k][0]
	page = 1

	url = "http://arc#{num}.contest.atcoder.jp/submissions/all/#{page}?task_screen_name=arc#{num}_#{task}&status=AC"
	doc = Nokogiri.HTML(open(url))

	alfa = false
	doc.css('td').css('a').each do |element|
		alfa = true
	end

	if alfa
	else
		task = level[k][1]
	end

	p "#{num}_#{task}"
	clear = false
	loop{
		url = "http://arc#{num}.contest.atcoder.jp/submissions/all/#{page}?task_screen_name=arc#{num}_#{task}&status=AC"
		doc = Nokogiri.HTML(open(url))

		br = true
		doc.css('td').css('a').each do |element|
			br = false
	  		if element[:href].include?('/users/')
	    		element[:href] =~ /users\//
	    		if $' == u_name
	    			arr[num.to_i-1] += task
	    			clear = true
	    		end
	  		end
		end
		if br == true || clear == true
			break
		end
		page += 1
	}

end
end

for i in 0..43 do
	print i+1
	priin " "
	if arr[i].include?("1") || arr[i].include?("a")
		print "A"
	end
	if arr[i].include?("2") || arr[i].include?("b")
		print "B"
	end
	if arr[i].include?("3") || arr[i].include?("c")
		print "C"
	end
	if arr[i].include?("4") || arr[i].include?("d")
		print "D"
	end
	puts ""
end