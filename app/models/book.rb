# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, presence: true
  validates :isbn, presence: true, uniqueness: true, format: { with: /\A\d{10}|\d{13}\z/, message: "正確格式為13碼 or 10碼" }
  validates :publish_date, presence: true
  has_one_attached :cover
end
