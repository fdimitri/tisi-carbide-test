json.array!(@osdefs) do |osdef|
  json.extract! osdef, :id, :name, :version
  json.url osdef_url(osdef, format: :json)
end
