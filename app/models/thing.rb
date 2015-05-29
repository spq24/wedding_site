class Thing < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	mount_uploader :video, ImageUploader

	include AutoHtml

	validates :name, :email, presence: true

  auto_html_for :video do
    html_escape
    youtube(:width => 400, :height => 250, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end

end
