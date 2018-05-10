# class for American Ten-Pin Bowling game score calculation
class Bowling
  attr_reader :frames, :tries

  def roll(result)
    @frames = []
    @tries  = [1, 2]

    result.chars.each do |pin|
      if pin == 'X'
        fail 'X cannot be in second try' if tries.first == 2
        frames << [10]
      elsif pin =~ /\-|[1-9]/
        score = pin == '-' ? 0 : pin.to_i
        if tries.first == 1
          frames << [score]
        else
          frames.last << score
        end
        tries.push tries.shift
      elsif pin == '/'
        fail '/ cannot be in frist try' if tries.first == 1
        frames.last << 10 - frames.last.first
        tries.push tries.shift
      else
        fail 'invalid pin ' + pin
      end
    end
    # puts frames.map{ |frame| frame.join(',') }.join(' | ')
  end

  def score
    frames[0..9].map.with_index do |tries, idx|
      if tries == [10]
        if frames[idx + 1] == [10]
          10 + 10 + frames[idx + 2].first
        else
          10 + frames[idx + 1].sum
        end
      elsif tries.sum == 10
        10 + frames[idx + 1].first
      else
        tries.sum
      end
    end.sum
  end
end
