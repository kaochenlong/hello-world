class Book < ApplicationRecord
  mount_uploader :image, ImageUploader

  def self.at_least_one
    true if self.count >= 1
  end

end
