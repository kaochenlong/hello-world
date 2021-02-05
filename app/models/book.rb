class Book < ApplicationRecord
  validates :isbn,   :isbn_format => true
  validates :isbn10, :isbn_format => { :with => :isbn10 }
  validates :isbn13, :isbn_format => { :with => :isbn13 }

end
