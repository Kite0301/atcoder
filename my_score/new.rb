require 'nokogiri'
require 'open-uri'

u_name = gets.chomp.to_s

arr = Array.new(45,"")

for i in 1..44 do
	num = i.to_s
	if num.size == 1
		num = "00" + num
	else
		num = "0" + num
	end

	page = 1
	url = "http://arc#{num}.contest.atcoder.jp/submissions/all/#{page}?&status=AC&user_screen_name=#{u_name}"

	clear = false
	# loop{
		doc = Nokogiri.HTML(open(url))

		doc.css('td').css('a').each do |element|
	  		if element[:href].include?("/tasks/arc#{num}")
	  			arr[i] = arr[i] + element[:href].to_s.reverse[0]
	  		end
	  	end
		# page += 1
	# }
	puts num
end

# 出力
for i in 1..44 do
	print "第#{i}回 #{arr[i]}"
	puts ""
end

# ans = Array.new(44,"")
# aa,bb,cc,dd = 0,0,0,0
# for i in 0..43 do
# 	if arr[i].include?("1") || arr[i].include?("a")
# 		ans[i] += "A"
# 		aa += 1
# 	end
# 	if arr[i].include?("2") || arr[i].include?("b")
# 		ans[i] += "B"
# 		bb += 1
# 	end
# 	if arr[i].include?("3") || arr[i].include?("c")
# 		ans[i] += "C"
# 		cc += 1
# 	end
# 	if arr[i].include?("4") || arr[i].include?("d")
# 		ans[i] += "D"
# 		dd += 1
# 	end

# 	puts "第#{i+1}回は#{ans[i]}です。"
# end

# puts "A問題の正答数は#{aa}問です。"
# puts "B問題の正答数は#{bb}問です。"
# puts "C問題の正答数は#{cc}問です。"
# puts "D問題の正答数は#{dd}問です。"
