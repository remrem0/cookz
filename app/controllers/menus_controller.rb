class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_menu, only: [:show]

  def index
    @menus = Menu.all
    # binding.pry
    # if params
    if params[:booking][:location].strip == ""
      @menus
    elsif params[:booking][:location]
      @menus = @menus.where(city: params[:booking][:location])
    end

    if params[:menu].nil? || params[:menu][:category_id] == "Any"
      @menus
    elsif params[:menu][:category_id]
      @menus = @menus.where(category_id: params[:menu][:category_id])
    end

    if params[:booking][:guests]
      @menus = @menus.where(guests: params[:booking][:guests])
    end

    if params[:menu][:minprice] == ""
      @menus
    elsif params[:menu][:minprice]
      @menus = @menus.where("price > ?",  params[:menu][:minprice].to_i)
    end

    if params[:menu][:maxprice] == ""
      @menus
    elsif params[:menu][:maxprice]
      @menus = @menus.where("price < ?",  params[:menu][:maxprice].to_i)
    end
    # end
  end

  def show
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
