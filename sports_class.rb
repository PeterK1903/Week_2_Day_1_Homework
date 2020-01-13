class Sports

  attr_reader :team_name, :players, :coach
  attr_accessor :team_name, :players, :coach

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  # Getter Methods
  #
  def team_name
    return @team_name
  end

  def player_name
    return @players
  end

  def coach_name
    return @coach
  end

  # Setter Methods

  def set_coach_name(new_coach_name)
    @coach = new_coach_name
  end

  def set_player_name(new_player_name)
    @players = new_player_name
  end

  def player_in_team(name)
    for player in @players
      return true if player == name
    end
  end

  def add_points_when_team_win(win)
    @points += 3 if win == true
  end

end
