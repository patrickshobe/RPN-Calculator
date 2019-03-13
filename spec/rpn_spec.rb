require 'spec_helper'
require './lib/rpn'

describe 'Active Spec' do
  it '#calculate addition' do
    calc = RPNActive.new
    expect(calc.calculate(2, 2, '+')).to eq(4)
  end
  it '#calculate subtraction' do
    calc = RPNActive.new
    expect(calc.calculate(2, 2, '-')).to eq(0)
  end
  it '#calculate multiplication' do
    calc = RPNActive.new
    expect(calc.calculate(2, 2, '*')).to eq(4)
  end
  it '#calculate division' do
    calc = RPNActive.new
    expect(calc.calculate(10, 2, '/')).to eq(5)
  end
  it '#calculate floats' do
    calc = RPNActive.new
    expect(calc.calculate(10, 2.5, '+')).to eq(12.5)
  end
  it '#calculate multiple times' do
    calc = RPNActive.new
    expect(calc.calculate(10, 2, '/')).to eq(5)
    expect(calc.calculate(10, '+')).to eq(15)
  end

end

