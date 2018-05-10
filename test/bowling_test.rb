require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/bowling'

describe Bowling do
  it 'should score correctly' do
    [
      ['--------------------',  0],
      ['XXXXXXXXXXXX',          300],
      ['9-9-9-9-9-9-9-9-9-9-',  90],
      ['5/5/5/5/5/5/5/5/5/5/5', 150],
      ['12345123451234512345',  60],
      ['263/8-X9/8-8-8-8-X9/',  124]
    ].each do |result, score|
      assert_equal score, Bowling.cal_score(result)
    end
  end
end
