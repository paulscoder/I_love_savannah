class HomeController < ApplicationController
  def index
    if Lovers.all.count < 2
      render 'add_lovers'
    else
      redirect_to redirect_home_path
  end
end
