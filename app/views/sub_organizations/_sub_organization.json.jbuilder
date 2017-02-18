json.extract! sub_organization, :id, :OrganizationName, :SubOrganizationName, :Description, :created_at, :updated_at
json.url sub_organization_url(sub_organization, format: :json)