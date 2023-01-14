class AdminPolicy < ApplicationPolicy
    def initialize(user, professional)
        @user = user
        @professional = professional
      end
    
    def index?
      @user.admin?
    end
  
    def show?
      @user.admin?
    end
  
    class Scope < Scope
      def resolve
        if user.admin?
          scope.all
        else
          scope.none
        end
      end
    end
  end
  