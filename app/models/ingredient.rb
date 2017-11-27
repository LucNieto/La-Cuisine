class Ingredient < ApplicationRecord
	has_many :quantifications,  :dependent => :destroy
	has_many :recipes, through: :quantifications
end
