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
        }},
      {
        title: "",
        rental_details: {
          student_name: "",
          due_date: ""
        }}
    ]

    @library = Library.new(@books)

  end
