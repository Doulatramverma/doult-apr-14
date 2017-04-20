class Blog < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :video, VideoUploader
	has_many :comments, dependent: :destroy
	has_many :images, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
