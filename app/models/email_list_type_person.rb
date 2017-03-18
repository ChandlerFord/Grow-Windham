class EmailListTypePerson < ActiveRecord::Base
    has_many :email_list_types
    has_many :people
end
