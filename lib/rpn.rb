class RPN
  def initialize()
    @answer = 0
  end

  def calculate(left = @answer, right, operator)
    @answer = left.to_f.send(operator, right.to_f)
  end
end
