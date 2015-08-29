class Ticket < ActiveRecord::Base
  belongs_to :User
  belongs_to :AssignedUser, :class_name => "User"
  belongs_to :Priority
  belongs_to :State
  belongs_to :osdef
  belongs_to :Hardware
  belongs_to :TicketCategory
  belongs_to :TicketGroup
  has_many :TicketUpdates, :class_name => "TicketUpdate"
end
