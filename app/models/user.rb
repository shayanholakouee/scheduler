class User < ApplicationRecord
	has_secure_password
	validates :email, presence: true, format: { with: /\A[^@\s]+@[^@s]+\z/, message: "must be valid email!" }

	def self.catch_user_info id 
		user = self.find_by id: id
	end

end
