class RPN
  def initialize()
    @answer = 0
  end

  def calculate(left = @answer, right, operator)
    @answer = left.send(operator, right)
  end
end
