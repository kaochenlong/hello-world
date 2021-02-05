class Book < ApplicationRecord
  mount_uploader :cover, CoverUploader
end
