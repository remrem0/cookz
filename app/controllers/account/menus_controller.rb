class Account::MenusController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]

  def index
    # Let's anticipate on next week (with login)
    @menus = current_user.menus.all
    @user = current_user
  end

  def show
    # Let's anticipate on next week (with login)
    @user = current_user
  end

  def new
    # Let's anticipate on next week (with login)
    @menu = current_user.menus.new
    @user = current_user
  end

  def create
    # Let's anticipate on next week (with login)
    @user = current_user
    # @menu = current_user.menus.find(params[:id])
    @menu = @user.menus.new(menu_params)

    if @menu.save
      redirect_to account_menu_path(@menu)
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    # Let's anticipate on next week (with login)
    @menu.update(menu_params)
    @menu.save
    redirect_to account_menu_path(@menu.id)
  end

  private

  def set_params
    @menu = current_user.menus.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:name, :guests, :description, :price, :category_id, :picture)
  end
end
