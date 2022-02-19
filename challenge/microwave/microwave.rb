=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end
# 1. Remember pass to seconds and minutes
# 2. Store minutes
# 3. Store seconds

#require 'byebug'


class Microwave
	def initialize(time)
		@time = time
	end

	# 1. if < 60 => put seconds = 00:59
	# 2. if >= 60 => To do divisions
	def timer()
		min = (@time / 60).to_s
		sec = (@time % 60).to_s

		if (@time < 60)
			return @time < 10 ? "00:0#{@time}": "00:#{@time}"
		elsif (@time < 99)
			return format_two_zero(min, sec)
		else
			min = (@time / 100)
			sec = (@time % 100)
			# p "min: #{min} sec: #{sec}"
			#byebug
			while (sec > 59)
				sec %= 60
				min += 1
			end

			min = min.to_s
			sec = sec.to_s
			return format_two_zero(min, sec)
		end
	end

	def format_two_zero(min, sec)
		min = min.length == 1 ? "0#{min}": min
		sec = sec.length == 1 ? "0#{sec}": sec

		"#{min}:#{sec}"
	end
end

Microwave.new(272).timer