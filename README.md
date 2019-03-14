# RPN-Calculator
This is a calculator that utilizes [Reverse Polish Notation](https://en.wikipedia.org/wiki/Reverse_Polish_notation) written in Ruby.

To run locally:
* Clone this repository `https://github.com/patrickshobe/RPN-Calculator.git`
* Move into the directory `cd RPN-Calculator`
* Start the calculator `ruby calculator.rb`
* To Run Tests:
	* Install dependencies with bundle `bundle`
	* Run RSPEC `rspec`

There are currently two different ways to use the calculator:
* Press `f` to be able to enter full expressions i.e.
```
Enter an Expression: '2 1 12 3 / - + '
= -1
Enter an Expression: q
Goodbye
```
* Press `i` to use interactive mode:
```
Enter a digit:     1
Enter a digit:     2
Enter an operator: +
= 3
Enter a digit:     2
Enter an operator: *
= 6
Ebter a digit:     4
Enter an operator: -
= 2
Enter a digit: q
Goodbye
```

