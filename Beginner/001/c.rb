d,l = gets.chomp.split.map(&:to_i)
if d >= 113
	case (d-113)/225
	when 0
		dir = "NNE"
	when 1
		dir = "NE"
	when 2
		dir = "ENE"
	when 3
		dir = "E"
	when 4
		dir = "ESE"
	when 5
		dir = "SE"
	when 6
		dir = "SSE"
	when 7
		dir = "S"
	when 8
		dir = "SSW"
	when 9
		dir = "SW"
	when 10
		dir = "WSW"
	when 11
		dir = "W"
	when 12
		dir = "WNW"
	when 13
		dir = "NW"
	when 14
		dir = "NNW"
	else
		dir = "N"
	end
else
	dir = "N"
end

case l * 10 / 6 
when 0..24
	lev = 0
when 25..154
	lev = 1
when 155..334
	lev = 2
when 335..544
	lev = 3
when 545..794
	lev = 4
when 795..1074
	lev = 5
when 1075..1384
	lev = 6
when 1385..1714
	lev = 7
when 1715..2074
	lev = 8
when 2075..2444
	lev = 9
when 2445..2844
	lev = 10
when 2845..3264
	lev = 11
else
	lev = 12
end

if lev == 0
	dir = "C"
end

print "#{dir} #{lev}"
puts ""