json.extract! user, :id, :UserID, :PersonalID, :UserRole, :created_at, :updated_at
json.url user_url(user, format: :json)