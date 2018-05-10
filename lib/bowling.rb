# class for American Ten-Pin Bowling game score calculation
class Bowling
  def self.transform(chars)
    return [] if chars.empty?

    if chars[1] == '/'
      [chars[0].to_i] + [10 - chars[0].to_i] + transform(chars.drop(2))
    else
      [{ 'X' => 10, '-' => 0 }[chars[0]] || chars[0].to_i] +
        transform(chars.drop(1))
    end
  end

  def self.score(pins)
    return pins.reduce(&:+) if pins.size <= 3

    return 10 + pins[1] + pins[2] + score(pins.drop(1)) if pins[0] == 10
    return 10 + pins[2] + score(pins.drop(2)) if pins[0] + pins[1] == 10

    pins[0] + pins[1] + score(pins.drop(2))
  end

  def self.cal_score(result)
    score(transform(result.chars))
  end
end
