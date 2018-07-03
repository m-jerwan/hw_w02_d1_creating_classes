require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test
  def setup
    @library = Library.new(
      "Lord of the Flies",
      "Angelina",
      "11/04/16",
      "Lord of the Rings",
      "Bob",
      "01/01/16",
      "Necronomicon",
      "",
      ""  )
  end
  #1
  def test_book_name
    assert_equal("Lord of the Flies", @library.book_name_1)
  end
  #2
  def test_student_name
    assert_equal("Angelina", @library.student_name_1)
  end
  #3
  def test_due_date
    assert_equal("11/04/16", @library.due_date_1)
  end
  #4






end
