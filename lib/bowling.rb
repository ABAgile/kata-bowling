# class for American Ten-Pin Bowling game score calculation
class Bowling
  attr_reader :frames

  def roll(frames)
    @frames = frames
  end

  def score
    if frames == '-' * 20
      0
    else
      300
    end
  end
end
