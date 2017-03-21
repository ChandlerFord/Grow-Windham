class PagesController < ApplicationController
    def adhocReporting
        @resources = ResourceName.all
        
    end
    def index
    end
    def about_us
    end
    
end
