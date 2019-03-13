require 'spec_helper'
require './lib/rpn'

describe 'Active Spec' do
  it '#calculate addition' do
    calc = RPN.new
    expect(calc.calculate(2, 2, '+')).to eq(4)
  end
  it '#calculate subtraction' do
    calc = RPN.new
    expect(calc.calculate(2, 2, '-')).to eq(0)
  end
  it '#calculate multiplication' do
    calc = RPN.new
    expect(calc.calculate(2, 2, '*')).to eq(4)
  end
  it '#calculate division' do
    calc = RPN.new
    expect(calc.calculate(10, 2, '/')).to eq(5)
  end
  it '#calculate floats' do
    calc = RPN.new
    expect(calc.calculate(10, 2.5, '+')).to eq(12.5)
  end
  it '#calculate multiple times' do
    calc = RPN.new
    expect(calc.calculate(10, 2, '/')).to eq(5)
    expect(calc.calculate(10, '+')).to eq(15)
  end
end

