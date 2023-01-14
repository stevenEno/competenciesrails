class HomeController < ApplicationController
  
  def index
      @user = current_user
      @professionals = @user.professionals
  end

  def about
  end

  def home
  end

  def homepage
    skip_policy_scope
  end
end
