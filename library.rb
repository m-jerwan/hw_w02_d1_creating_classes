
class Library

attr_reader :books

def initialize(arg_1)
  @books  =  arg_1
end

#----------------------------------------------

def get_book_info_by_title(title)
  for book in books
    if book[:title] == title
       return book
    end
  end
end

def get_book_rental_details_by_title(title)
  for book in books
    if book[:title] == title
       return book[:rental_details]
    end
  end
end


def add_book_to_library(title)
  @books << {
    title: "#{title}",
    rental_details: {
      student_name: "",
      due_date: ""
    }}

end

def change_rental_details(title, student_name, due_date)
  for book in books
    if book[:title] == title
       book[:rental_details][:student_name] = student_name
       book[:rental_details][:due_date] = due_date
    end
  end

end








end
