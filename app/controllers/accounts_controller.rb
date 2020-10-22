class AccountsController < ApplicationController
  before_action :check_for_login

  def index
  end


  def myvideos
    @videos = @current_user.videos.all
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :pro, :password, :password_confirmation)
    end

end
