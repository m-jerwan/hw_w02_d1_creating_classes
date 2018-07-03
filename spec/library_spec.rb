require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test
  def setup
    @books =[
      {
        title: "Lord of the Flies",
        rental_details: {
          student_name: "Angelina",
          due_date: "11/04/16"
        }},
      {
        title: "Necronomicon",
        rental_details: {
          student_name: "Jonathan",
          due_date: "01/01/16"
        }}
    ]

    @library = Library.new(@books)

  end

  def test_get_books
    assert_equal(@books, @library.books)
  end

  def test_get_book_info_by_title
    expected = {
      title: "Necronomicon",
      rental_details: {
        student_name: "Jonathan",
        due_date: "01/01/16"
      }}
    actual = @library.get_book_info_by_title("Necronomicon")
    assert_equal(expected, actual)
  end


  def test_get_book_rental_details_by_title
    expected = {
      student_name: "Angelina",
      due_date: "11/04/16"
    }
    actual = @library.get_book_rental_details_by_title("Lord of the Flies")
    assert_equal(expected, actual)
  end

  def test_add_book_to_library
    @library.add_book_to_library("Pan Tadeusz")
    expected = {
        title: "Pan Tadeusz",
        rental_details: {
          student_name: "",
          due_date: ""
        }}
    actual = @library.get_book_info_by_title("Pan Tadeusz")
    assert_equal(expected, actual)
  end


  def test_change_rental_details
    @library.change_rental_details("Necronomicon", "Alan Poe", "11/11/18")
    expected = {
      title: "Necronomicon",
      rental_details: {
        student_name: "Alan Poe",
        due_date: "11/11/18"
      }}
    actual = @library.get_book_info_by_title("Necronomicon")
    assert_equal(expected, actual)
  end






end
