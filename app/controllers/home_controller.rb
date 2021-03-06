class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    if user_signed_in?
      @users = User.all
      render 'users/index'
    else
      redirect_to new_user_session_path
    end
  end
end
