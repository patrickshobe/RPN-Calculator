require 'spec_helper'
require './lib/rpn_string'

describe 'RPN Calculator' do
  it 'should do simple addition' do
    calculator =  RPN_string.new('5 5 +')
    result = calculator.evaluate
    expect(result).to eq(10)
  end
  it 'should do simple addition' do
    calculator =  RPN_string.new('5 5 -')
    result = calculator.evaluate
    expect(result).to eq(0)
  end
  it 'should do simple multiplication' do
    calculator =  RPN_string.new('5 5 *')
    result = calculator.evaluate
    expect(result).to eq(25)
  end
  it 'should do simple division' do
    calculator =  RPN_string.new('25 5 /')
    result = calculator.evaluate
    expect(result).to eq(5)
  end
  it 'should calculate handle multiple operations' do
    calculator =  RPN_string.new('3 2 * 11 -')
    result = calculator.evaluate
    expect(result).to eq(-5)
  end

  it 'should calculate handle complex operations' do
    calculator =  RPN_string.new('2 1 12 3 / - + ')
    result = calculator.evaluate
    expect(result).to eq(-1)
  end
end
