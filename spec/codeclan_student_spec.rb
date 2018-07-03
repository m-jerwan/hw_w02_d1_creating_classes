require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestCodeclan_student < MiniTest::Test
  def setup
    @student = CodeclanStudent.new("Jonathan", "E23")
  end

  #1
  def test_name
    assert_equal("Jonathan", @student.name)
  end

  #2
  def test_cohort
    assert_equal("E23", @student.cohort)
  end

  #3
  def test_set_name
    @student.set_name("Jemma")
    assert_equal("Jemma", @student.name)
  end

  #4
  def test_set_cohort
    @student.set_cohort("E24")
    assert_equal("E24", @student.cohort)
  end

  #5
  def test_talks
    @student.talks
    the_talk = "Hi, I'm a student and I can talk!"
    assert_equal(the_talk, @student.talks)
  end

  #6
  def test_fav_language
    language = @student.fav_language("JavaScript")
    assert_equal("I love JavaScript!", language)
  end

  #7
  def test_fav_language
    language = @student.fav_language("Java")
    assert_equal("I hate Java!", language)
  end


end
