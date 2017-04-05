class Event < ActiveRecord::Base
    belongs_to :events_people
    has_many :gardens
    has_many :programs
    has_many :event_types
    

    
end
