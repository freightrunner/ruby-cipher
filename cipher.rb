input1, metric = ARGV

# Set metric ARGV to 3 if user does not supply one
metric = 3 if metric.nil?

#create an array of the alphabet
alphabet = []
("a".."z").each do |char|
	alphabet << char
end

# Grab number of letters specified in metric ARGV
input1 = input1.chars.first(metric.to_i)

# Get numerical value for letters from index of letter in alphabet
char_num = []
input1.each{ |x| char_num << alphabet.index(x).to_s }

# Format letter value so that it is always two digits
char_num.each do |y|
	if y.each_char.count < 2
		y = y.insert(0, "0")
	end
end

# Display 6 digit code for first three letters of input
puts char_num.join('.')