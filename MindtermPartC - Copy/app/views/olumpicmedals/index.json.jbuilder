json.array!(@olumpicmedals) do |olumpicmedal|
  json.extract! olumpicmedal, :id, :athlete_name, :event, :country, :medal_type, :event_date
  json.url olumpicmedal_url(olumpicmedal, format: :json)
end
