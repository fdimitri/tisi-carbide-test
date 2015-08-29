json.array!(@ticket_updates) do |ticket_update|
  json.extract! ticket_update, :id, :title, :desc, :Ticket_id, :User_id, :AssignedUser_id, :State_id, :Priority_id
  json.url ticket_update_url(ticket_update, format: :json)
end
