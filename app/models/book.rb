class Book < ApplicationRecord
  validates :isbn,   :isbn_format => true
  validates :isbn10, :isbn_format => { :with => :isbn10 }
  validates :isbn13, :isbn_format => { :with => :isbn13 }


  validates :publish_date, presence: true, if: :article_published?

  def check_published
    self.publish_date = Time.now if self.published
  end

  def article_published?
    self.published
  end  
end
