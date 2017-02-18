json.extract! person, :id, :PersonalID, :LastName, :Firstname, :EmailAddress, :Age, :created_at, :updated_at
json.url person_url(person, format: :json)