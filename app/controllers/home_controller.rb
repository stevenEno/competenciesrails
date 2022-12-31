class HomeController < ApplicationController
  def index
      @user = current_user
      @professionals = @user.professionals
  end

  def about
  end
end
