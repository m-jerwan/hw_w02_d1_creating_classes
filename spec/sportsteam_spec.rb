require('minitest/autorun')
require('minitest/rg')
require_relative('../sportsteam.rb')

class TestSportsTeam < MiniTest::Test
  def setup
    @team = SportsTeam.new(
      "The Pulpings",
      ["Jules Winnfield",
        "Vincent Vega",
        "Marsellus Wallace",
        "Zed",
        "The Wolf",
        "The Gimp"],
        "Tarantino",
        0)
      end

#-------------------------TESTING:
#1
  def test_team_name
    assert_equal("The Pulpings", @team.team_name)
  end
#2
  def test_team_players
    players = ["Jules Winnfield",
      "Vincent Vega",
      "Marsellus Wallace",
      "Zed",
      "The Wolf",
      "The Gimp"]
      assert_equal(players, @team.team_players)
    end
#3
    def test_team_coach
      assert_equal("Tarantino", @team.team_coach)

    end
#4
  def test_coach_updater
    @team.team_coach = "Joe Belushi"
    assert_equal("Joe Belushi", @team.team_coach)
  end
#5
  def test_add_player
    @team.add_player("Mia Wallace")
    assert_equal(7, @team.team_players.length)
  end
#6
def test_is_player__true
  is_player = @team.is_player?("Vincent Vega")
  assert_equal(true, is_player)
end
#7
def test_is_player__false
  is_player = @team.is_player?("Pocahontas")
  assert_equal(false, is_player)
end

#8
def test_is_points_set__true
  assert_equal(0, @team.team_points)
end

#9
def test_points_change_win
  @team.team_change_points("win")
  assert_equal(1, @team.team_points)
end

#10
def test_points_change_lose
  @team.team_change_points("lose")
  assert_equal(-1, @team.team_points)
end


end
