require 'spreadsheet'
require 'nokogiri'
require 'open-uri'

print "ユーザー名を入力してください："
u_name = gets.chomp.to_s

# まずはレギュラー
arr = Array.new(100,"")
i = 1
100.times{
	num = i.to_s
	if num.size == 1
		num = "00" + num
	else
		num = "0" + num
	end

	page = 1
	url = "http://arc#{num}.contest.atcoder.jp/submissions/all/#{page}?&status=AC&user_screen_name=#{u_name}"

	doc = Nokogiri.HTML(open(url))

	# ページが存在するかの判定
	if doc.css('h2').size == 0
		break
	end

	doc.css('td').css('a').each do |element|
  		if element[:href].include?("/tasks/arc#{num}")
  			if arr[i].include?(element[:href].to_s.reverse[0])
  			else
  				arr[i] = arr[i] + element[:href].to_s.reverse[0]
  			end
  		end
  	end

	puts "ARC#{num}"
	i += 1
}

arc = i - 1

for h in 1..arc do
	arr[h].gsub!("a","1")
	arr[h].gsub!("b","2")
	arr[h].gsub!("c","3")
	arr[h].gsub!("d","4")
	if arr[h] == nil
		arr[h] = ""
	end
end

# ここまでレギュラー
# ここからビギナー

brr = Array.new(100,"")
i = 1
100.times{
	num = i.to_s
	if num.size == 1
		num = "00" + num
	else
		num = "0" + num
	end

	page = 1
	url = "http://abc#{num}.contest.atcoder.jp/submissions/all/#{page}?&status=AC&user_screen_name=#{u_name}"

	doc = Nokogiri.HTML(open(url))

	# ページが存在するかの判定
	if doc.css('h2').size == 0
		break
	end

	doc.css('td').css('a').each do |element|
  		if element[:href].include?("/tasks/abc#{num}")
  			if brr[i].include?(element[:href].to_s.reverse[0])
  			else
  				brr[i] = brr[i] + element[:href].to_s.reverse[0]
  			end
  		end
  	end

	puts "ABC#{num}"
	i += 1
}

abc = i - 1

for h in 1..abc do
	brr[h].gsub!("a","1")
	brr[h].gsub!("b","2")
	brr[h].gsub!("c","3")
	brr[h].gsub!("d","4")
	if brr[h] == nil
		brr[h] = ""
	end
end

# ここまでビギナー
# ここからシート記入
# 新規作成
book = Spreadsheet::Workbook.new    
sheet = book.create_worksheet(name: 'curry')
       
sheet.row(0).concat %w{回 A B C D 回 A B C D}

# レギュラー
reg = Array.new(5,0)
for i in 1..arc do
	sheet[i,0] = i
	for num in 1..4 do
		if arr[i].include?("#{num.to_s}")
			reg[num] += 1
			sheet[i,num] = "o"
		else
			sheet[i,num] = ""
		end
	end
end
sheet[arc+1,0] = "合計"
for num in 1..4 do
	sheet[arc+1,num] = reg[num]
end

# ビギナー
beg = Array.new(5,0)
for i in 1..abc do
	sheet[i,5] = i
	for num in 1..4 do
		if brr[i].include?("#{num.to_s}")
			beg[num] += 1
			sheet[i,num+5] = "o"
		else
			sheet[i,num+5] = ""
		end
	end
end
sheet[abc+1,5] = "合計"
for num in 1..4 do
	sheet[abc+1,num+5] = beg[num]
end

book.write("AtCoder_#{u_name}.xls") 