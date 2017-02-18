json.extract! garden_inventory, :id, :GardenName, :ToolName, :Count, :created_at, :updated_at
json.url garden_inventory_url(garden_inventory, format: :json)