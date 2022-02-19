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
