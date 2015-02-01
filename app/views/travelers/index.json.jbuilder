json.array!(@travelers) do |traveler|
  json.extract! traveler, :id, :name, :destination_id
  json.url traveler_url(traveler, format: :json)
end
