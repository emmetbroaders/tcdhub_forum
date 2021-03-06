class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "60x60#" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end