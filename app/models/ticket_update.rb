class TicketUpdate < ActiveRecord::Base
  belongs_to :Ticket
  belongs_to :User
  belongs_to :AssignedUser, :class_name => "User"
  belongs_to :State
  belongs_to :Priority
end
