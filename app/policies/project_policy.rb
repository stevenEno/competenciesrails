class ProjectPolicy < ApplicationPolicy
    attr_reader :user, :project

    def initialize(user, project)
        @user = user
        @project = project
    end

    def update?
        user.teacher? || !project.published?
    end

    def create?
        user && user.teacher?
    end

    def destroy?
        user && user.teacher?
    end
end
  