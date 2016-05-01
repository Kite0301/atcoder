require 'spreadsheet'
require 'nokogiri'
require 'open-uri'

u_name = gets.chomp.to_s

brr = Array.new(30,"")

for i in 1..29 do
	num = i.to_s
	if num.size == 1
		num = "00" + num
	else
		num = "0" + num
	end

	page = 1
	url = "http://abc#{num}.contest.atcoder.jp/submissions/all/#{page}?&status=AC&user_screen_name=#{u_name}"

		doc = Nokogiri.HTML(open(url))

		doc.css('td').css('a').each do |element|
	  		if element[:href].include?("/tasks/abc#{num}")
	  			if brr[i].include?(element[:href].to_s.reverse[0])
	  			else
	  				brr[i] = brr[i] + element[:href].to_s.reverse[0]
	  			end
	  		end
	  	end
	puts num
end

# 出力
for i in 1..29 do
	brr[i].gsub!("a","1")
	brr[i].gsub!("b","2")
	brr[i].gsub!("c","3")
	brr[i].gsub!("d","4")
	if brr[i] == nil
		brr[i] = ""
	end
end

# 新規作成
book = Spreadsheet::Workbook.new    
sheet = book.create_worksheet(name: 'curry')
       
sheet.row(0).concat %w{回 A B C D}

for i in 1..29 do
	sheet[i,0] = i
	for num in 1..4 do
		if brr[i].include?("#{num.to_s}")
			sheet[i,num] = "o"
		end
	end
end

book.write("abc_#{u_name}.xls") 