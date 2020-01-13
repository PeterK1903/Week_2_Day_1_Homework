require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_class')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new


class TestSports < MiniTest::Test

  def setup
    #players = ['Joe P', 'Kevin F', 'Gary R']
    # pass players as array in @sports? Is this possible?
    @sports = Sports.new('Everton Beavers', ['Joe P', 'Kevin F', 'Gary R'] ,'Marty M')
  end

  # Getter Tests:

  def test_team_name
    assert_equal('Everton Beavers', @sports.team_name)
  end

  def test_player_name
    assert_equal(['Joe P', 'Kevin F', 'Gary R'], @sports.player_name)
  end

  def test_coach_name
    assert_equal('Marty M', @sports.coach_name)
  end

  # Setter Tests:

  def test_set_coach_name
    # @sports.set_coach_name('Party Marty')
    @sports.coach = 'Party Marty'
    assert_equal('Party Marty', @sports.coach_name)
  end

  def test_set_player_name
    @sports.players = 'Jonny D'
    assert_equal('Jonny D', @sports.player_name)
  end

  def test_player_in_team
    assert_equal(true, @sports.player_in_team("Joe P"))
  end

  def test_add_points_when_team_win
    @sports.add_points_when_team_win(true)
    assert_equal(3, @sport.add_points_when_team_win)
  end

end
