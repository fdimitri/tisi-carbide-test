json.array!(@ticket_categories) do |ticket_category|
  json.extract! ticket_category, :id, :name, :desc, :User_id, :TicketGroup_id
  json.url ticket_category_url(ticket_category, format: :json)
end
