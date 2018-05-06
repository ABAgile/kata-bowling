# class for American Ten-Pin Bowling game score calculation
class Bowling
  attr_reader :frames

  def roll(frames)
    @frames = frames
  end

  def score
    0
  end
end
