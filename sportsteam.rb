
class SportsTeam
  attr_reader :team_name, :team_players, :team_points
  attr_accessor :team_coach

  def initialize(team_name, team_players, team_coach, team_points)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
    @team_points = 0
  end

  #------------------------------------------

  def add_player(name)
    @team_players << name
  end #why i can change this if team_players is reader only?

  def is_player?(name)
    for player in @team_players
      if player == name
        return true
      end
    end
    return false
  end

  def team_change_points(outcome)
    @team_points += 1 if outcome == "win"
    @team_points -= 1 if outcome == "lose"
end



end
