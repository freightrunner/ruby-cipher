input1, options = ARGV

lett = Array.new
code = []
input1.each_char do |l|
	lett << l
end
code = lett[0..2]
alpha = []
("a".."z").each do |char|
	alpha << char
end
new_char = []
code.each do |x|
	new_char << alpha.index(x).to_s
end
new_char.each do |y|
	if y.each_char.count < 2
		y = y.insert(0, "0")
	end
end
puts new_char.join('.')