class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  has_many :comments
  acts_as_commentable
end
