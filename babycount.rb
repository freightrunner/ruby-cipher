present = Time.now

due_date = Time.local(2017, 10, 19)

countdown = due_date - present

days_left = countdown / 86400

puts "Days Until #{due_date.strftime("%A %B %d")}th : #{days_left.to_i}"