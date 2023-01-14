class HomePolicy < ApplicationPolicy
    def homepage?
        true
    end

    def home?
        true
    end
  
    def about?
        true
    end

    def index?
        true
    end
end