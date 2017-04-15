class Blog < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :video, ImageUploader  
	has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
end
