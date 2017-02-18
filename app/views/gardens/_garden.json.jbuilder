json.extract! garden, :id, :GardenName, :GardenLocation, :created_at, :updated_at
json.url garden_url(garden, format: :json)