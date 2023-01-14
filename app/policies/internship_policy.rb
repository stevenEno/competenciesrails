class InternshipPolicy < ApplicationPolicy
    attr_reader :user, :internship

    def initialize(user, internship)
        @user = user
        @internship = internship
    end

    def update?
        user.admin? || !internship.published?
    end

    def create?
        user && user.admin?
    end

    def destroy?
        user && user.admin?
    end
end
  