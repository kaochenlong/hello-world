# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, :content, presence: true
  validate :valid_isbn, if: -> { isbn.present? }

  private

  def valid_isbn
    if isbn.length == 13
      errors.add(:isbn, 'is invalid') unless valid_isbn_13?(isbn)
    elsif isbn.length == 10
      errors.add(:isbn, 'is invalid') unless valid_isbn_10?(isbn)
    else
      errors.add(:isbn, 'length is invalid')
    end
  end

  def valid_isbn_13?(isbn)
    return false unless isbn.match?(/^\d{13}$/)
    sum = isbn.chars[0..11].each_with_index.sum do |char, index|
      # 加權index偶數乘1,index奇數乘3
      weight = index.even? ? 1 : 3
      char.to_i * weight
    end
    checksum = 10 - (sum % 10)
    checksum = 0 if checksum == 10

    checksum == isbn[-1].to_i
  end

  def valid_isbn_10?(isbn)
    return false unless isbn.match?(/^\d{9}[0-9X]$/)
    sum = isbn.chars[0..8].each_with_index.sum do |char, index|
      char.to_i * (10 - index)
    end
    checksum = 11 - (sum % 11)

    checksum == 10 ? isbn[-1].upcase == 'X' : checksum == isbn[-1].to_i
  end
end
