DAY = 86400
HOUR = 3600
MINUTE = 60

present = Time.now

due_date = Time.local(2017, 10, 19)

countdown = due_date - present

days_left = countdown / DAY

diff = countdown % DAY

hours_left = diff / HOUR

diff = diff % HOUR

minutes_left = diff / MINUTE


puts "Days Until #{due_date.strftime("%A %B %d")}th : #{days_left.to_i} days, #{hours_left.to_i} hours, #{minutes_left.to_i} minutes"