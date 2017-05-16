input1, options = ARGV

alphabet = []
("a".."z").each do |char|
	alphabet << char
end

input1 = input1[0..2].split("")
letter_number = []
input1.each do |x|
	letter_number << alphabet.index(x).to_s
end
letter_number.each do |y|
	if y.each_char.count < 2
		y = y.insert(0, "0")
	end
end
puts letter_number.join('.')