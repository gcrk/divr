class AccountsController < ApplicationController
  # This controller exists to permit access to personal data and media instead of the full list of videos or diving center


  before_action :check_for_login

  def index
    @scubas = @current_user.scubas.all
  end

# This path to user videos is here to edit and see user's videos insted of searching in the full list with other users videos
  def myvideos
    @videos = @current_user.videos.all
  end

  def mycenters
    @centers = @current_user.centers.all
  end
# I create an alternate path to get access to the dive logs to edit or delete them. so you avoid mistake when you're just browsing your dives in the 'My dives' menu
  def myscubas
    @scubas = @current_user.scubas.all
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :pro, :password, :password_confirmation)
    end

end
