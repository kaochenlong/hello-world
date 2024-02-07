# frozen_string_literal: true

module BooksHelper
  def book_cover(book)
    if book.cover.attached?
      image_tag book.cover.variant(resize_to_limit: [300, 300])
    else
      image_tag asset_path('books/default_img.jpeg'), width: 300, height: 300
    end
  end

  def book_cover_sm(book)
    if book.cover.attached?
      image_tag book.cover.variant(resize_to_limit: [100, 100])
    else
      image_tag asset_path('books/default_img.jpeg'), width: 100, height: 100
    end
  end
end
