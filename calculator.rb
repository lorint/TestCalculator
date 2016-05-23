class Calculator
	attr_reader :accumulator

	def accumulator=(val)
		@accumulator = val.to_f
	end

	def add(val)
		self.accumulator += val
	end

	def subtract(val)
		self.accumulator -= val
	end

	def multiply(val)
		self.accumulator *= val
	end

	def divide(val)
		self.accumulator /= val
	end
end
