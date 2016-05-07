class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  

  has_many :events
  has_many :comments
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private
  # Validates the size of an uploaded picture.
  def picture_size
  	if picture.size > 5 .megabytes
  		errors.add(:picture, "Image size should be less than 5MB")
  	end
  end

end
