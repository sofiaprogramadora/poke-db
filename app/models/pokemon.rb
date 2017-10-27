class Pokemon < ApplicationRecord
	has_many :atrapados
	has_many :user, through: :atrapados
end
