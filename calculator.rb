require './lib/rpn'
require './lib/rpn_string'
require './lib/interface'


interface = Interface.new

interface.welcome
interface.instructions

choice = gets.chomp.downcase

if choice == 'i'
  rpn = RPN.new
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
elsif choice == 'f'
  while true
    expression = interface.prompt_expression
    rpn        = RPN_string.new(expression)
    interface.display_answer(rpn.evaluate)
  end
end

