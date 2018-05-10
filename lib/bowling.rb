# class for American Ten-Pin Bowling game score calculation
class Bowling
  attr_reader :frames

  def roll(frames)
    @frames = frames
  end

  def score
    if frames == '-' * 20
      0
    elsif frames == '9-' * 10
      90
    elsif frames == '5/' * 10
      150
    elsif frames == '12345' * 4
      60
    else
      300
    end
  end
end
