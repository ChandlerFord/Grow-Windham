class PagesController < ApplicationController
    def adhocReporting
        @resources = ResourceName.all
        
    end
    def index
        @events = Event.all
        @people = Person.all
        @organizations = Organization.all
        @garden_crops = GardenCrop.all
    end
    def about_us
    end
    
    def totalsreport
        @events = Event.all
        @people = Person.all
        @organizations = Organization.all
        @garden_crops = GardenCrop.all
        @events_people = EventsPerson.all
        @programs = Program.all
        @gardens = Garden.all
    end
    
    def accessdenied
    end
    
end
