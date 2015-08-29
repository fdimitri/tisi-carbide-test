json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :desc, :reproSteps, :User_id, :AssignedUser_id, :Priority_id, :State_id, :osdef_id, :Hardware_id, :TicketCategory_id, :TicketGroup_id
  json.url ticket_url(ticket, format: :json)
end
