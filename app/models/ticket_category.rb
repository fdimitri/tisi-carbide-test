class TicketCategory < ActiveRecord::Base
  belongs_to :User
  belongs_to :TicketGroup
end
