class AccountsController < ApplicationController
  before_action :check_for_login

  def index
    @scubas = @current_user.scubas.all
  end


  def myvideos
    @videos = @current_user.videos.all
  end

  def mycenters
    @centers = @current_user.centers.all
  end

  def myscubas
    @scubas = @current_user.scubas.all
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :pro, :password, :password_confirmation)
    end

end
