class ScubasController < ApplicationController

  before_action :check_for_login

  def index
    @scubas = @current_user.scubas.all
    @scubas_sort_by_date = @scubas.order(:date).reverse
  end

  def new
    @scuba = Scuba.new
  end

  def create
    @current_user.scubas.create scuba_params
    redirect_to accounts_path
  end

  def edit
    @scuba = @current_user.scubas.find params[:id]
  end

  def destroy
    scuba = @current_user.scubas.find params[:id]
    scuba.destroy
    redirect_to accounts_path
  end

  def update
    scuba = @current_user.scubas.find params[:id]
    scuba.update scuba_params
    redirect_to accounts_path
  end

  def show
    @scuba = @current_user.scubas.find params[:id]

  end

  private
  def scuba_params
    params.require(:scuba).permit(:title, :date, :location, :duration, :depth, :gps, :buddy, :notes )
  end

end
