class Post < ActiveRecord::Base
	validates :image, presence: true
	has_file_attachment :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
