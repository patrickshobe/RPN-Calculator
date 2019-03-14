require 'spec_helper'
require './lib/interface'

describe 'Interface Spec' do
it 'should exist' do
    interface = Interface.new
    expect(interface).to be_a(Interface)
  end
  it 'should greet new users' do
    interface = Interface.new
    expect(STDOUT).to receive(:puts).with("Welcome to the Reverse Polish Notation Calculator\nPress q/Q to quit")
    interface.welcome
  end
  it '#validate_digit success' do
    interface = Interface.new
    result = interface.validate_digit('9')
    expect(result).to eq(9)
  end
  it '#validate_operator success' do
    interface = Interface.new
    result = interface.validate_operator('+')
    expect(result).to eq('+')
  end
end

