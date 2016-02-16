class User < ActiveRecord::Base

	validates :username, :presence => true
	validates :username, uniqueness: true
	# validates :password, :presence => true
	validates :email, :presence => true

	validates :password, :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/, message: "must be at least 6 characters and include one number and one letter."}

	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	has_and_belongs_to_many :events

end
