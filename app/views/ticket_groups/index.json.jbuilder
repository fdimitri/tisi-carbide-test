json.array!(@ticket_groups) do |ticket_group|
  json.extract! ticket_group, :id, :name, :desc, :User_id
  json.url ticket_group_url(ticket_group, format: :json)
end
