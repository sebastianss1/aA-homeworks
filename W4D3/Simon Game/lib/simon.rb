class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @sequence_length = 1
    @seq = []

  end

  def play
    self.take_turn until @game_over
    if @game_over 
      self.game_over_message
      self.reset_game
    end 
  end

  def take_turn
    self.show_sequence
    self.require_sequence

    if !@game_over
      self.round_success_message 
      @sequence_length += 1
    end 
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color

    colors = ["red", "blue", "yellow", "green"].shuffle
    @seq << colors.shift 

  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []

  end
end
