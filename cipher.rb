input1, options = ARGV

alphabet = []
("a".."z").each do |char|
	alphabet << char
end

input1 = input1[0..2].split("")
char_num = []
input1.each do |x|
	char_num << alphabet.index(x).to_s
end
char_num.each do |y|
	if y.each_char.count < 2
		y = y.insert(0, "0")
	end
end
puts char_num.join('.')