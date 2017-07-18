class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
<<<<<<< HEAD
=======
  before_action :set_menu, only: [:show]
>>>>>>> a57497d7df6f45eb464387064eaa249b091d5371

  def index
    @menus = Menu.all
  end

  def show
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
