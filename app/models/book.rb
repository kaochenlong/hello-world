# frozen_string_literal: true

class Book < ApplicationRecord
  validates :isbn, presence: true, format: {
    with: /\A(?:\d{9}[\dXx]|\d{13})\z/,
    message: "must be a valid ISBN-10 or ISBN-13"
  }
end
