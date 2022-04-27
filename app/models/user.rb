class User < ApplicationRecord
	has_secure_password
	validates :email, presence: true, format: {with: ^\S+@\S+\.\S+$, message: "must be valid email!" }
end
