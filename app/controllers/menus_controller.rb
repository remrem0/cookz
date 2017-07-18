class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_menu, only: [:show]

  def show
  end

private

  def set_menu
    @menu = Menu.find(params[:id])
  end

end
