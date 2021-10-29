class Book < ApplicationRecord
	mount_uploader :image, BookcoverUploader
end
