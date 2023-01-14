class PortfolioPolicy < ApplicationPolicy
    attr_reader :user, :portfolio

    def initialize(user, portfolio)
        @user = user
        @portfolio = portfolio
    end

    def update?
        user.student? || !portfolio.published?
    end

    def create?
        user && user.student?
    end

    def destroy?
        user && user.student?
    end
end