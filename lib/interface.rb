class Interface

  def welcome
    puts "Welcome to the Reverse Polish Notation Calculator\nPress q/Q to quit"
  end

  def instructions
    puts "Press 'i' for interactive mode (where each digit and operand is entered on their own)"
    puts "Press 'f' for full mode (where you can enter the entire expression)"
  end

  def validate_digit(input)
    check_exit(input)
    return input.to_f if input =~ /^[0-9]/
    puts "Invalid Digit, Please try again"
    prompt_digit
  end

  def validate_operator(input)
    check_exit(input)
    return input if input =~ /^[-+\/*]/
    puts "Invalid Operator, Please try again"
    prompt_operator
  end

  def validate_expression(input)
    check_exit(input)
    return input if input =~ /^[-+\/*0-9]/
    puts "Invalid Expression, Please try again"
    prompt_expression
  end

  def prompt_digit
    print "Enter a digit:       "
    validate_digit(gets.chomp)
  end

  def prompt_operator
    print "Enter an operator:   "
    validate_operator(gets.chomp)
  end

  def prompt_expression
    print "Enter an expression:  "
    validate_expression(gets.chomp)
  end

  def display_answer(answer)
    puts "= #{answer}"
  end

  def check_exit(input)
    if input.downcase == 'q'
      puts 'Goodbye'
      exit
    end
  end
end
