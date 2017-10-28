class Pokemon < ApplicationRecord
	has_many :catched
	has_many :users, through: :catched
end
