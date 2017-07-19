  class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_menu, only: [:show]

  def index
    @menus = Menu.all
    if params
      if params[:booking][:location]
        @menus = @menus.where(city: params[:booking][:location])
      end
      if params[:menu][:category_id]
        @menus = @menus.where(category_id: params[:menu][:category_id])
      end
      if params[:booking][:guests]
        @menus = @menus.where(guests: params[:booking][:guests])
      end
    end
  end

  def show
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
