# class PhoneNumber
# 	def self.clean(phone='')
# 		if phone.empty?
# 			return nil
# 		end
# 		number_phone = phone.gsub(/\D/, '')
# 		number_phone = number_phone.length == 11 ? number_phone[1..] : number_phone
# 		if number_phone.length < 10 || (number_phone.length == 10 && number_phone[0] != 1)
# 			return nil
# 		end
# 		number_phone
# 	end
# end


# p PhoneNumber.clean("(223) 456-7890")
# p PhoneNumber.clean("223.456.7890")
# p PhoneNumber.clean("223 456   7890   ")
# p PhoneNumber.clean("123456789")
# p PhoneNumber.clean("22234567890")
# p PhoneNumber.clean("12234567890")
# p PhoneNumber.clean("+1 (223) 456-7890")
# p PhoneNumber.clean("321234567890")
# p PhoneNumber.clean("123-abc-7890")
# p PhoneNumber.clean("123-@:!-7890")
# p PhoneNumber.clean("(023) 456-7890")
# p PhoneNumber.clean("(123) 456-7890")
# p PhoneNumber.clean("(223) 056-7890")
# p PhoneNumber.clean("(223) 156-7890")
# p  PhoneNumber.clean("1 (023) 456-7890")

# class SimpleCalculator
# 	ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

# 	def self.calculate(first_operand, second_operand, operation)
# 	  begin
# 		if (!(first_operand.is_a? Integer) || !(second_operand.is_a? Integer))
# 		  raise ArgumentError.new("Raises an ArgumentError")
# 		end

# 		if second_operand == 0
# 		  raise ZeroDivisionError('Division by zero is not allowed.')
# 		end

# 		case operation
# 		when '+'
# 		  "#{first_operand} #{operation} #{second_operand} = #{(first_operand + second_operand).to_s}"
# 		when '/'
# 		  "#{first_operand} #{operation} #{second_operand} = #{(first_operand / second_operand).to_s}"
# 		when '*'
# 		  "#{first_operand} #{operation} #{second_operand} = #{(first_operand * second_operand).to_s}"
# 		when '-'
# 		  raise UnsupportedOperation.new('Raises an UnsupportedOperation')
# 		else
# 		  p "Error"
# 		end
# 	  rescue => e
# 		puts e.message
# 		e.message
# 	  end
# 	end
# end

# SimpleCalculator.calculate(33, 0, "/")
class ListOps
	def self.arrays(arr)
	  counter = 0
	  arr.each do
		counter += 1
	  end
	  counter
	end

	def self.reverser(arr)
	  answer = []
	  until arr.empty?
		answer << arr.pop
	  end
	  answer
	end

	def self.concatter(arr1, arr2)
	  answer = []
	  arr1.each do |element|
		answer << element
	  end
	  arr2.each do |element|
		answer << element
	  end
	  answer
	end

	def self.mapper(arr)
	  answer = []
	  arr.each do |element|
		answer << yield(element) if block_given?
	  end
	  answer
	end

	def self.filterer(arr)
	  answer = []
	  arr.each do |element|
		answer << element if block_given? && yield(element)
	  end
	  answer
	end

	def self.sum_reducer(arr)
	  total = 0
	  arr.each do |element|
		total += element
	  end
	  total
	end

	def self.factorial_reducer(arr)
	  total = 1
	  arr.each do |element|
		  total = total * element
	  end
	  total
end