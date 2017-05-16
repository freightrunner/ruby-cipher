input1, options = ARGV

#create an array of the alphabet
alphabet = []
("a".."z").each do |char|
	alphabet << char
end

# Grab first 3 letters of input
input1 = input1[0..2].split("")

# Get numerical value for letters from index of letter in alphabet
char_num = []
input1.each do |x|
	char_num << alphabet.index(x).to_s
end

# Format letter value so that it is always two digits
char_num.each do |y|
	if y.each_char.count < 2
		y = y.insert(0, "0")
	end
end

# Display 6 digit code for first three letters of input
puts char_num.join('.')