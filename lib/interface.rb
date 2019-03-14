class Interface

  def welcome
    puts "Welcome to RPN Calculator\nPress q/Q to quit"
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

  def prompt_digit
    print "Enter a digit:       "
    validate_digit(gets.chomp)
  end

  def prompt_operator
    print "Enter an operator:   "
    validate_operator(gets.chomp)
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
