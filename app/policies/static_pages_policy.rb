class StaticPagesPolicy < ApplicationPolicy
    def home?
      true
    end
  
    def about?
      true
    end
end