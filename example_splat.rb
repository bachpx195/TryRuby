def shout_out(message, *friends)
	friends.each { |f| puts "#{f}: #{message}" }
end

shout_out("Nice to meet you!", "Bach", "Hue", "Hoa")