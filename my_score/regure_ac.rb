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

ans = Array.new(44,"")
aa,bb,cc,dd = 0,0,0,0
for i in 0..43 do
	if arr[i].include?("1") || arr[i].include?("a")
		ans[i] += "A"
		aa += 1
	end
	if arr[i].include?("2") || arr[i].include?("b")
		ans[i] += "B"
		bb += 1
	end
	if arr[i].include?("3") || arr[i].include?("c")
		ans[i] += "C"
		cc += 1
	end
	if arr[i].include?("4") || arr[i].include?("d")
		ans[i] += "D"
		dd += 1
	end

	puts "第#{i+1}回は#{ans[i]}です。"
end

puts "A問題の正答数は#{aa}問です。"
puts "B問題の正答数は#{bb}問です。"
puts "C問題の正答数は#{cc}問です。"
puts "D問題の正答数は#{dd}問です。"
