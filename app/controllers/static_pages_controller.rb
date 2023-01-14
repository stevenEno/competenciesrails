class StaticPagesController < ApplicationController
    
    def home
        authorize :static_pages, :home?
    end
    
    def about
        
    end

    def contact
        
    end

    def help
        
    end
end