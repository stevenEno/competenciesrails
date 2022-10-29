class CompetencyPolicy < ApplicationPolicy
  attr_reader :user, :competency

  def initialize(user, competency)
    @user = user
    @competency = competency
  end

  def index?
    user.admin?
  end

  def show?
    user.admin? || user.comptencies.exists?(id: competency.id)
  end

  def create?
    user.admin?
  end

  def new?
    create?
  end

  def update?
    user.admin?
  end

  def edit?
    update?
  end

  def destroy?
    user.admin?
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end

end