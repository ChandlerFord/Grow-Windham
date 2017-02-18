json.extract! garden_crop, :id, :GardenName, :CropName, :DateHarvested, :PoundsHarvested, :created_at, :updated_at
json.url garden_crop_url(garden_crop, format: :json)