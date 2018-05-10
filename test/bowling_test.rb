require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/bowling'

describe Bowling do
  subject { Bowling.new }

  it 'should score 0 for all missed' do
    subject.roll('-' * 20)
    assert_equal 0, subject.score
  end

  it 'should score 300 for perfect game' do
    subject.roll('X' * 12)
    assert_equal 300, subject.score
  end
end
