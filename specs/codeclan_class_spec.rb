require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_class')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new


class TestStudent < MiniTest::Test

  def setup
    @student = Student.new('Peter', 'G17', 'Java')
  end

  # Testing Getters:

  def test_student_name
    assert_equal('Peter', @student.student_name)
  end

  def test_student_cohort
    assert_equal('G17', @student.cohort)
  end

  # Testing Setters:

  def test_set_student_name
    @student.set_student_name('Paul')
    assert_equal('Paul', @student.student_name)
  end

  def test_set_cohort
    @student.set_cohort('G18')
    assert_equal('G18', @student.cohort)
  end

  def test_can_student_talk
     assert_equal("I can talk!", @student.can_student_talk("I can talk!"))
   end

  def test_return_lang
    assert_equal('I love Ruby', @student.return_lang('Ruby'))
  end

end
