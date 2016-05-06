class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  has_many :comments
<<<<<<< HEAD

  def guests 
  	guests = []
  	guest_lists = GuestList.where(event_id: self)
  	guest_lists.each do |guest_list|
  		guest = User.find(guest_list.user_id)
  		guests.push(guest)
  	end
  	guests
  end

=======
  acts_as_commentable
>>>>>>> 703d2ac... Built a comment feature for each event page
end
