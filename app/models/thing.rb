class Thing < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	mount_uploader :video, ImageUploader

	validates :name, :email, presence: true

end
