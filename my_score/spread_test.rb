require 'spreadsheet'

# 新規作成
book = Spreadsheet::Workbook.new    
sheet = book.create_worksheet(name: 'curry')
       
sheet.row(0).concat %w{回 A B C D}

arr = ["","1234","12","13"]

for i in 1..3 do
	sheet[i,0] = i
	for num in 1..4 do
		if arr[i].include?("#{num.to_s}")
			sheet[i,num] = "o"
		else
			sheet[i,num] = "x"
		end
	end
end

book.write('test_original.xls') 