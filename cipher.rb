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
	new_char << alpha.index(x)
end
puts new_char.join('-')