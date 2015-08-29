json.array!(@priorities) do |priority|
  json.extract! priority, :id, :name, :desc, :enum
  json.url priority_url(priority, format: :json)
end
