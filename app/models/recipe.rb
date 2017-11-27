class Recipe < ApplicationRecord
	has_attached_file :image, style: {large: "600x600", medium: "300x300>", thumb: "150x150#>" }, default_url: "/images/:style/image_missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	has_many :quantifications,  :dependent => :destroy
	has_many :ingredients, through: :quantifications
end
