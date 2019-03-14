require './lib/rpn'
require './lib/interface'

rpn = RPN.new
interface = Interface.new

interface.welcome

left     = interface.prompt_digit
right    = interface.prompt_digit
operator = interface.prompt_operator
answer   = rpn.calculate(left, right, operator)
interface.display_answer(answer)

while true
  digit    = interface.prompt_digit
  operator = interface.prompt_operator
  answer   = rpn.calculate(digit, operator)
  interface.display_answer(answer)
end
