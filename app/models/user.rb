class User < ActiveRecord::Base

	validates :username, :presence => true
	validates :username, uniqueness: true
	validates :password, :presence => true
	validates :email, :presence => true

	validates :password, length: { minimum: 8 }
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	has_and_belongs_to_many :events

end
