json.extract! resource, :id, :ResourceName, :TransactionDate, :ResourceType, :ResourceTransaction, :MonetaryValue, :NonMonetaryValue, :ResourcePersonalID, :ResourceOrganization, :DestinationPersonalID, :DestinationOrganization, :Description, :created_at, :updated_at
json.url resource_url(resource, format: :json)