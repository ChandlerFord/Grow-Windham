class Resource < ActiveRecord::Base
    has_many :resource_transactions
    has_many :resource_types
    has_many :people
    has_many :organizations
end
