require 'spreadsheet'
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
	  			if arr[i].include?(element[:href].to_s.reverse[0])
	  			else
	  				arr[i] = arr[i] + element[:href].to_s.reverse[0]
	  			end
	  		end
	  	end
		# page += 1
	# }
	puts num
end

# 出力
for i in 1..44 do
	arr[i].gsub!("a","1")
	arr[i].gsub!("b","2")
	arr[i].gsub!("c","3")
	arr[i].gsub!("d","4")
	if arr[i] == nil
		arr[i] = ""
	end
end

# 新規作成
book = Spreadsheet::Workbook.new    
sheet = book.create_worksheet(name: 'curry')
       
sheet.row(0).concat %w{回 A B C D}

for i in 1..44 do
	sheet[i,0] = i
	for num in 1..4 do
		if arr[i].include?("#{num.to_s}")
			sheet[i,num] = "o"
		end
	end
end

book.write("arc_#{u_name}.xls") 