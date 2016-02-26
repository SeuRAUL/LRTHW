class Lexicon
  
  @direction = ['north', 'south', 'west', 'east', 'up', 'down', 'left', 'right', 'back']
  @verb = ['go', 'stop', 'kill', 'eat']
  @stop = %w(the in of from at it)
  @noun = %w(door bear princess cabinet)
  @number = (0..9)
  attr_reader :direction, :verb, :stop, :nouns, :numbers
  
  def self.scan(input)
    words = []
    input.split.each do |w|
      if @direction.include? w
        words << ['direction', w]
      elsif @verb.include? w
        words << ['verb', w]
      elsif @stop.include? w
        words << ['stop', w]
      elsif @noun.include? w
        words << ['noun', w]
      elsif (w.to_i.to_s == w)
        words << ['number', w.to_i]
      else
        words << ['error', w]
      end
    end
    words
  end

end