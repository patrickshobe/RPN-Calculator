class RPN_string
  def initialize(expression)
    @expression = expression
  end

  def characters
    @expression.split(" ")
  end

  def number?(value)
    value =~ /^\d+?$/
  end

  def evaluate
  	stack = []
    characters.each do |char|
		  case char
		    when /^[0-9]/
			    stack.push(char.to_f)
		    when /^[-+\/*]/
		    	raise "stack too small" if stack.size < 2
				  right = stack.pop
				  left = stack.pop
				  answer = left.send(char, right)
				  stack.push(answer)
      end
    end
    stack.last
	end
end

