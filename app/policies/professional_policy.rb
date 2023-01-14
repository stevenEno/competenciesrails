class ProfessionalPolicy < ApplicationPolicy
    attr_reader :user, :professional

    def initialize(user, professional)
        @user = user
        @professional = professional
    end

    def update?
        user.admin? || !professional.published?
    end

    def create?
        user && user.admin?
    end

    def destroy?
        user && user.admin?
    end
end
  